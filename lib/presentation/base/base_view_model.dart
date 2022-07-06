abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs {
  // shared variables and functions that will be used through any view model.

}

abstract class BaseViewModelInputs{

  // will be called while initialization of view model
  void start();

  // will be called when viewmodel dies.
  void dispose();
}

abstract class BaseViewModelOutputs{
  
}