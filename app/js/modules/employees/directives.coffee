angular.module('app.employees.directives', []).directive('cyrillicFullName', ->
  isValid = (s)->
    s && s.split(" ").length is 3 && /^[а-яА-Я ]+$/.test(s)

  require: 'ngModel',
  restrict: 'C',
  link: (scope, elem, attr, ngModelCtrl) ->
    ngModelCtrl.$parsers.unshift (viewValue) ->
      valid = isValid(viewValue)
      ngModelCtrl.$setValidity('cyrillicFN', valid)
      viewValue

    ngModelCtrl.$formatters.unshift (modelValue) ->
      ngModelCtrl.$setValidity('cyrillicFN', isValid(modelValue))
      modelValue
).directive('emailOrPhone', ->
  emailRegExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/
  phoneRegExp = /^\+?\d{11}$/
  isValid = (s)->
    s && (emailRegExp.test(s) || phoneRegExp.test(s))

  require: 'ngModel',
  restrict: 'C',
  link: (scope, elem, attr, ngModelCtrl) ->
    ngModelCtrl.$parsers.unshift (viewValue) ->
      valid = isValid(viewValue)
      ngModelCtrl.$setValidity('emailOrPhone', valid)
      viewValue

    ngModelCtrl.$formatters.unshift (modelValue) ->
      ngModelCtrl.$setValidity('emailOrPhone', isValid(modelValue))
      modelValue
)