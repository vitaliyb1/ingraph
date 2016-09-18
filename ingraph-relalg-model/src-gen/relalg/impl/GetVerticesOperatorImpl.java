/**
 */
package relalg.impl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import relalg.GetVerticesOperator;
import relalg.RelalgPackage;
import relalg.VertexVariable;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Get Vertices Operator</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link relalg.impl.GetVerticesOperatorImpl#getVertexVariable <em>Vertex Variable</em>}</li>
 * </ul>
 *
 * @generated
 */
public class GetVerticesOperatorImpl extends OperatorImpl implements GetVerticesOperator {
	/**
	 * The cached value of the '{@link #getVertexVariable() <em>Vertex Variable</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getVertexVariable()
	 * @generated
	 * @ordered
	 */
	protected VertexVariable vertexVariable;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected GetVerticesOperatorImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return RelalgPackage.Literals.GET_VERTICES_OPERATOR;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public VertexVariable getVertexVariable() {
		if (vertexVariable != null && vertexVariable.eIsProxy()) {
			InternalEObject oldVertexVariable = (InternalEObject)vertexVariable;
			vertexVariable = (VertexVariable)eResolveProxy(oldVertexVariable);
			if (vertexVariable != oldVertexVariable) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE, oldVertexVariable, vertexVariable));
			}
		}
		return vertexVariable;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public VertexVariable basicGetVertexVariable() {
		return vertexVariable;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setVertexVariable(VertexVariable newVertexVariable) {
		VertexVariable oldVertexVariable = vertexVariable;
		vertexVariable = newVertexVariable;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE, oldVertexVariable, vertexVariable));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE:
				if (resolve) return getVertexVariable();
				return basicGetVertexVariable();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE:
				setVertexVariable((VertexVariable)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE:
				setVertexVariable((VertexVariable)null);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case RelalgPackage.GET_VERTICES_OPERATOR__VERTEX_VARIABLE:
				return vertexVariable != null;
		}
		return super.eIsSet(featureID);
	}

} //GetVerticesOperatorImpl
