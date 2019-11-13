class twotwo_flatten_list {
    public function __construct(){}

    public function flatten_list(vec<NestInt> $intput): vec<int> {
        return vec[];
    }
}

class NestInt {
    private bool $isInteger;
    private ?int $intValue;
    private ?vec<NestInt> $vecValue;
    
    public function __construct(bool $isInteger) {
        $this->isInteger = $isInteger;
        $this->intValue = null;
        $this->vecValue = null;
    }

    public function setIntValue(int $intValue): void {
        $this->intValue = $intValue;
    }

    public function setVecValue(vec<NestInt> $vecValue): void {
        $this->vecValue = $vecValue;
    }

    public function getIntValue(): ?int {
        return $this->intValue;
    }

    public function getVecValue(): ?vec<NestInt> {
        return $this->vecValue;
    }
}