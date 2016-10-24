/**
 * generated by Xtext 2.10.0
 */
package org.slizaa.neo4j.opencypher.openCypher.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.slizaa.neo4j.opencypher.openCypher.OpenCypherPackage;
import org.slizaa.neo4j.opencypher.openCypher.Properties;
import org.slizaa.neo4j.opencypher.openCypher.RangeLiteral;
import org.slizaa.neo4j.opencypher.openCypher.RelationshipDetail;
import org.slizaa.neo4j.opencypher.openCypher.RelationshipTypes;
import org.slizaa.neo4j.opencypher.openCypher.Variable;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Relationship Detail</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.impl.RelationshipDetailImpl#getVariable <em>Variable</em>}</li>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.impl.RelationshipDetailImpl#isOptional <em>Optional</em>}</li>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.impl.RelationshipDetailImpl#getTypes <em>Types</em>}</li>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.impl.RelationshipDetailImpl#getRange <em>Range</em>}</li>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.impl.RelationshipDetailImpl#getProperties <em>Properties</em>}</li>
 * </ul>
 *
 * @generated
 */
public class RelationshipDetailImpl extends MinimalEObjectImpl.Container implements RelationshipDetail
{
  /**
   * The cached value of the '{@link #getVariable() <em>Variable</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVariable()
   * @generated
   * @ordered
   */
  protected Variable variable;

  /**
   * The default value of the '{@link #isOptional() <em>Optional</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isOptional()
   * @generated
   * @ordered
   */
  protected static final boolean OPTIONAL_EDEFAULT = false;

  /**
   * The cached value of the '{@link #isOptional() <em>Optional</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #isOptional()
   * @generated
   * @ordered
   */
  protected boolean optional = OPTIONAL_EDEFAULT;

  /**
   * The cached value of the '{@link #getTypes() <em>Types</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTypes()
   * @generated
   * @ordered
   */
  protected RelationshipTypes types;

  /**
   * The cached value of the '{@link #getRange() <em>Range</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRange()
   * @generated
   * @ordered
   */
  protected RangeLiteral range;

  /**
   * The cached value of the '{@link #getProperties() <em>Properties</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getProperties()
   * @generated
   * @ordered
   */
  protected Properties properties;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected RelationshipDetailImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return OpenCypherPackage.Literals.RELATIONSHIP_DETAIL;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Variable getVariable()
  {
    return variable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetVariable(Variable newVariable, NotificationChain msgs)
  {
    Variable oldVariable = variable;
    variable = newVariable;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE, oldVariable, newVariable);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setVariable(Variable newVariable)
  {
    if (newVariable != variable)
    {
      NotificationChain msgs = null;
      if (variable != null)
        msgs = ((InternalEObject)variable).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE, null, msgs);
      if (newVariable != null)
        msgs = ((InternalEObject)newVariable).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE, null, msgs);
      msgs = basicSetVariable(newVariable, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE, newVariable, newVariable));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean isOptional()
  {
    return optional;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setOptional(boolean newOptional)
  {
    boolean oldOptional = optional;
    optional = newOptional;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__OPTIONAL, oldOptional, optional));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public RelationshipTypes getTypes()
  {
    return types;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetTypes(RelationshipTypes newTypes, NotificationChain msgs)
  {
    RelationshipTypes oldTypes = types;
    types = newTypes;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES, oldTypes, newTypes);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setTypes(RelationshipTypes newTypes)
  {
    if (newTypes != types)
    {
      NotificationChain msgs = null;
      if (types != null)
        msgs = ((InternalEObject)types).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES, null, msgs);
      if (newTypes != null)
        msgs = ((InternalEObject)newTypes).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES, null, msgs);
      msgs = basicSetTypes(newTypes, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES, newTypes, newTypes));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public RangeLiteral getRange()
  {
    return range;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetRange(RangeLiteral newRange, NotificationChain msgs)
  {
    RangeLiteral oldRange = range;
    range = newRange;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE, oldRange, newRange);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setRange(RangeLiteral newRange)
  {
    if (newRange != range)
    {
      NotificationChain msgs = null;
      if (range != null)
        msgs = ((InternalEObject)range).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE, null, msgs);
      if (newRange != null)
        msgs = ((InternalEObject)newRange).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE, null, msgs);
      msgs = basicSetRange(newRange, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE, newRange, newRange));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Properties getProperties()
  {
    return properties;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetProperties(Properties newProperties, NotificationChain msgs)
  {
    Properties oldProperties = properties;
    properties = newProperties;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES, oldProperties, newProperties);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void setProperties(Properties newProperties)
  {
    if (newProperties != properties)
    {
      NotificationChain msgs = null;
      if (properties != null)
        msgs = ((InternalEObject)properties).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES, null, msgs);
      if (newProperties != null)
        msgs = ((InternalEObject)newProperties).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES, null, msgs);
      msgs = basicSetProperties(newProperties, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES, newProperties, newProperties));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE:
        return basicSetVariable(null, msgs);
      case OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES:
        return basicSetTypes(null, msgs);
      case OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE:
        return basicSetRange(null, msgs);
      case OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES:
        return basicSetProperties(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE:
        return getVariable();
      case OpenCypherPackage.RELATIONSHIP_DETAIL__OPTIONAL:
        return isOptional();
      case OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES:
        return getTypes();
      case OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE:
        return getRange();
      case OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES:
        return getProperties();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE:
        setVariable((Variable)newValue);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__OPTIONAL:
        setOptional((Boolean)newValue);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES:
        setTypes((RelationshipTypes)newValue);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE:
        setRange((RangeLiteral)newValue);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES:
        setProperties((Properties)newValue);
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
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE:
        setVariable((Variable)null);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__OPTIONAL:
        setOptional(OPTIONAL_EDEFAULT);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES:
        setTypes((RelationshipTypes)null);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE:
        setRange((RangeLiteral)null);
        return;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES:
        setProperties((Properties)null);
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
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case OpenCypherPackage.RELATIONSHIP_DETAIL__VARIABLE:
        return variable != null;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__OPTIONAL:
        return optional != OPTIONAL_EDEFAULT;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__TYPES:
        return types != null;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__RANGE:
        return range != null;
      case OpenCypherPackage.RELATIONSHIP_DETAIL__PROPERTIES:
        return properties != null;
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuffer result = new StringBuffer(super.toString());
    result.append(" (optional: ");
    result.append(optional);
    result.append(')');
    return result.toString();
  }

} //RelationshipDetailImpl