/**
 * generated by Xtext 2.10.0
 */
package org.slizaa.neo4j.opencypher.openCypher;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>List Comprehension</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.ListComprehension#getFilterExpression <em>Filter Expression</em>}</li>
 *   <li>{@link org.slizaa.neo4j.opencypher.openCypher.ListComprehension#getExpression <em>Expression</em>}</li>
 * </ul>
 *
 * @see org.slizaa.neo4j.opencypher.openCypher.OpenCypherPackage#getListComprehension()
 * @model
 * @generated
 */
public interface ListComprehension extends Expression
{
  /**
   * Returns the value of the '<em><b>Filter Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Filter Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Filter Expression</em>' containment reference.
   * @see #setFilterExpression(FilterExpression)
   * @see org.slizaa.neo4j.opencypher.openCypher.OpenCypherPackage#getListComprehension_FilterExpression()
   * @model containment="true"
   * @generated
   */
  FilterExpression getFilterExpression();

  /**
   * Sets the value of the '{@link org.slizaa.neo4j.opencypher.openCypher.ListComprehension#getFilterExpression <em>Filter Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Filter Expression</em>' containment reference.
   * @see #getFilterExpression()
   * @generated
   */
  void setFilterExpression(FilterExpression value);

  /**
   * Returns the value of the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Expression</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression</em>' containment reference.
   * @see #setExpression(Expression)
   * @see org.slizaa.neo4j.opencypher.openCypher.OpenCypherPackage#getListComprehension_Expression()
   * @model containment="true"
   * @generated
   */
  Expression getExpression();

  /**
   * Sets the value of the '{@link org.slizaa.neo4j.opencypher.openCypher.ListComprehension#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(Expression value);

} // ListComprehension
