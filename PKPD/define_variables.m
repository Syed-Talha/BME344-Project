function [x, y, a, b, c] = define_variables(age, k10)
    V1 = 4.27;
    V2 = 18.9-0.391*(age - 53);
    V3 = 2.38;
    C12 = 1.29 - 0.024*(age - 53);
    C13 = 0.0836;
    k12 = C12/V1;
    k13 = C13/V1;
    k21 = C12/V2;
    k31 = C13/V3;
    c = k10*k21*k31;
    b = k10*k21*k31 + k31*k12*k21 + k13*k21;
    a = k10 + k12 + k13 + k21 + k31;
    x = k21 + k31;
    y = k21*k31;
end