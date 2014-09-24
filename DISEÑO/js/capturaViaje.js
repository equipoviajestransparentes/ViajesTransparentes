var app = angular.module('ModuloCaptura',['ui.bootstrap'])
	/*Controlador del acordion*/
	.controller('AccordionCtrl', function($scope){
	  $scope.oneAtATime = true;

	  $scope.status = {
		isFirstOpen: true,
		isFirstDisabled: false
	  };
	 })
	 
	 
	/*Controlador de los calendarios*/
var DatepickerDemoCtrl = function ($scope) {
	  $scope.today = function() {
		$scope.dt = new Date();
	  };
	  $scope.today();

	  $scope.clear = function () {
		$scope.dt = null;
	  };

	  // Disable weekend selection
	  $scope.disabled = function(date, mode) {
		return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
	  };

	  $scope.toggleMin = function() {
		$scope.minDate = $scope.minDate ? null : new Date();
	  };
	  $scope.toggleMin();

	  $scope.open = function($event) {
		$event.preventDefault();
		$event.stopPropagation();

		$scope.opened = true;
	  };

	  $scope.dateOptions = {
		formatYear: 'yy',
		startingDay: 1
	  };

	  $scope.initDate = new Date('2016-15-20');
	  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
	  $scope.format = $scope.formats[0];
	};
	
	  


/*function AccordionDemoCtrl($scope) {
  $scope.oneAtATime = true;

  $scope.groups = [
    {
      title: 'Dynamic Group Header - 1',
      content: 'Dynamic Group Body - 1'
    },
    {
      title: 'Dynamic Group Header - 2',
      content: 'Dynamic Group Body - 2'
    }
  ];

  $scope.items = ['Item 1', 'Item 2', 'Item 3'];

  $scope.addItem = function() {
    var newItemNo = $scope.items.length + 1;
    $scope.items.push('Item ' + newItemNo);
  };

  $scope.status = {
    isFirstOpen: true,
    isFirstDisabled: false
  };
}*/

