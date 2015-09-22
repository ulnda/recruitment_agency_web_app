angular.module('app.employees.directives', []).directive('cyrillicFullName', 
  ->

    isValid = (s)->
      s && s.split(" ").length is 3 && /^[а-яА-Я ]+$/.test(s)

    require: 'ngModel',
    link: (scope, elem, attr, ngModelCtrl) ->
      ngModelCtrl.$parsers.unshift (viewValue) ->
        ngModelCtrl.$setValidity('cyrillicFN', isValid(viewValue))
        viewValue

      ngModelCtrl.$formatters.unshift (modelValue) ->
        ngModelCtrl.$setValidity('cyrillicFN', isValid(modelValue))
        modelValue
)