/*
 *	server/zone/objects/cell/CellObject.cpp generated by engine3 IDL compiler 0.60
 */

#include "CellObject.h"

/*
 *	CellObjectStub
 */

CellObject::CellObject(LuaObject* templateData) : SceneObject(DummyConstructorParameter::instance()) {
	_impl = new CellObjectImplementation(templateData);
	_impl->_setStub(this);

	((CellObjectImplementation*) _impl)->_serializationHelperMethod();
}

CellObject::CellObject(DummyConstructorParameter* param) : SceneObject(param) {
}

CellObject::~CellObject() {
}

void CellObject::sendBaselinesTo(SceneObject* player) {
	if (_impl == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, 6);
		method.addObjectParameter(player);

		method.executeWithVoidReturn();
	} else
		((CellObjectImplementation*) _impl)->sendBaselinesTo(player);
}

int CellObject::getCellNumber() {
	if (_impl == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, 7);

		return method.executeWithSignedIntReturn();
	} else
		return ((CellObjectImplementation*) _impl)->getCellNumber();
}

void CellObject::setCellNumber(int number) {
	if (_impl == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, 8);
		method.addSignedIntParameter(number);

		method.executeWithVoidReturn();
	} else
		((CellObjectImplementation*) _impl)->setCellNumber(number);
}

/*
 *	CellObjectImplementation
 */

CellObjectImplementation::~CellObjectImplementation() {
}

void CellObjectImplementation::_setStub(DistributedObjectStub* stub) {
	_this = (CellObject*) stub;
	SceneObjectImplementation::_setStub(stub);
}

DistributedObjectStub* CellObjectImplementation::_getStub() {
	return _this;
}

CellObjectImplementation::operator const CellObject*() {
	return _this;
}

void CellObjectImplementation::_serializationHelperMethod() {
	SceneObjectImplementation::_serializationHelperMethod();

	addSerializableVariable("cellNumber", &cellNumber);
}

int CellObjectImplementation::getCellNumber() {
	// server/zone/objects/cell/CellObject.idl(80):  return cellNumber;
	return cellNumber;
}

void CellObjectImplementation::setCellNumber(int number) {
	// server/zone/objects/cell/CellObject.idl(84):  cellNumber = number;
	cellNumber = number;
}

/*
 *	CellObjectAdapter
 */

CellObjectAdapter::CellObjectAdapter(CellObjectImplementation* obj) : SceneObjectAdapter(obj) {
}

Packet* CellObjectAdapter::invokeMethod(uint32 methid, DistributedMethod* inv) {
	Packet* resp = new MethodReturnMessage(0);

	switch (methid) {
	case 6:
		sendBaselinesTo((SceneObject*) inv->getObjectParameter());
		break;
	case 7:
		resp->insertSignedInt(getCellNumber());
		break;
	case 8:
		setCellNumber(inv->getSignedIntParameter());
		break;
	default:
		return NULL;
	}

	return resp;
}

void CellObjectAdapter::sendBaselinesTo(SceneObject* player) {
	return ((CellObjectImplementation*) impl)->sendBaselinesTo(player);
}

int CellObjectAdapter::getCellNumber() {
	return ((CellObjectImplementation*) impl)->getCellNumber();
}

void CellObjectAdapter::setCellNumber(int number) {
	return ((CellObjectImplementation*) impl)->setCellNumber(number);
}

/*
 *	CellObjectHelper
 */

CellObjectHelper* CellObjectHelper::staticInitializer = CellObjectHelper::instance();

CellObjectHelper::CellObjectHelper() {
	className = "CellObject";

	DistributedObjectBroker::instance()->registerClass(className, this);
}

void CellObjectHelper::finalizeHelper() {
	CellObjectHelper::finalize();
}

DistributedObject* CellObjectHelper::instantiateObject() {
	return new CellObject(DummyConstructorParameter::instance());
}

DistributedObjectAdapter* CellObjectHelper::createAdapter(DistributedObjectStub* obj) {
	DistributedObjectAdapter* adapter = new CellObjectAdapter((CellObjectImplementation*) obj->_getImplementation());

	obj->_setClassName(className);
	obj->_setClassHelper(this);

	adapter->setStub(obj);

	return adapter;
}

