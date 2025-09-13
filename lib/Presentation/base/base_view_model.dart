abstract class BaseViewModel extends BaseViewModelInputs
    implements BaseViewModelOutputs {
  // shard vars and functions
}

abstract class BaseViewModelInputs {
  void start();

  void dispose();
}

abstract class BaseViewModelOutputs {}
