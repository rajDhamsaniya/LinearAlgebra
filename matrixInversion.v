`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Created By : Raj Dhamsaniya
//
//Created on : 1 October,2016
//
//A code which gave us Inverse of a Matrix
//
//SPECIFICATIONS : 
//		this code gives the elements of inverse matrix and its co-officient inverse
//		User can have Inverse Matrix doing inverse multiplication of DetA with output matrix
//		This output matrix is inverse of our defined matrix in varilog code
//		We can get Inverse of different matrix with changing inputs from verilog code
//		Here, ans__ is output matrix 
//		Bigger the inputs of the matrix Bigger the Detrminent and Getting the inverse matrix is more difficult
//////////////////////////////////////////////////////////////////////////////////
module matrixInversion(clk ,cnt ,cnt40 , cnt0 , cnt1 ,cnt2 ,cnt3 , cnt4 ,cnt5 ,cnt6 ,cnt7 ,cnt8 ,cnt9,cnt10 , cnt11 ,cnt12 ,cnt13 , cnt14 ,cnt15 ,cnt16 ,cnt17 ,cnt18 ,cnt19,cnt20 , cnt21 ,cnt22 ,cnt23 , cnt24 ,cnt25 ,cnt26 ,cnt27 ,cnt28 ,cnt29,cnt30 , cnt31 ,cnt32 ,cnt33 , cnt34 ,cnt35 ,cnt36 ,cnt37 ,cnt38 ,cnt39,
		detA, ans00 , ans01 , ans02, ans03, ans04, ans10 , ans11 , ans12, ans13, ans14, ans20 , ans21 , ans22, ans23, ans24, ans30 , ans31 , ans32, ans33, ans34, ans40 , ans41 , ans42, ans43, ans44);

input clk;

reg [63:0] matrix [0:24];

output reg [63:0] ans00 , ans01 , ans02, ans03, ans04;
output reg [63:0] ans10 , ans11 , ans12, ans13, ans14;
output reg [63:0] ans20 , ans21 , ans22, ans23, ans24;
output reg [63:0] ans30 , ans31 , ans32, ans33, ans34;
output reg [63:0] ans40 , ans41 , ans42, ans43, ans44;
output reg [63:0] detA;

reg [63:0] a00 , a01 , a02 , a03 , a04 ,a05 , a06 , a07 , a08 , a09;
reg [63:0] a11 , a12 , a13 , a14 , a10 ,a15 , a16 , a17 , a18 , a19;
reg [63:0] a21 , a22 , a23 , a24 , a20 ,a25 , a26 , a27 , a28 , a29;
reg [63:0] a31 , a32 , a33 , a34 , a30 ,a35 , a36 , a37 , a38 , a39;
reg [63:0] a40 , a41 , a42 , a43 , a44 ,a45 , a46 , a47 , a48 , a49;

input cnt , cnt40;
input cnt0 , cnt1 ,cnt2 ,cnt3 , cnt4 ,cnt5 ,cnt6 ,cnt7 ,cnt8 ,cnt9;
input cnt10 , cnt11 ,cnt12 ,cnt13 , cnt14 ,cnt15 ,cnt16 ,cnt17 ,cnt18 ,cnt19;
input cnt20 , cnt21 ,cnt22 ,cnt23 , cnt24 ,cnt25 ,cnt26 ,cnt27 ,cnt28 ,cnt29;
input cnt30 , cnt31 ,cnt32 ,cnt33 , cnt34 ,cnt35 ,cnt36 ,cnt37 ,cnt38 ,cnt39;

always@(cnt)
begin
	a00 = 1;
	a01 = 2;
	a02 = 0;
	a03 = 0;
	a04 = 0;

	a05 = 1;
	a06 = 0;
	a07 = 0;
	a08 = 0;
	a09 = 0;


	a10 = 0;
	a11 = 1;
	a12 = 6;
	a13 = 0;
	a14 = 0;

	a15 = 0;
	a16 = 1;
	a17 = 0;
	a18 = 0;
	a19 = 0;


	a20 = 2;
	a21 = 0;
	a22 = 1;
	a23 = 0;
	a24 = 2;

	a25 = 0;
	a26 = 0;
	a27 = 1;
	a28 = 0;
	a29 = 0;


	a30 = 0;
	a31 = 0;
	a32 = 0;
	a33 = 1;
	a34 = 0;

	a35 = 0;
	a36 = 0;
	a37 = 0;
	a38 = 1;
	a39 = 0;


	a40 = 0;
	a41 = 0;
	a42 = 0;
	a43 = 0;
	a44 = 1;

	a45 = 0;
	a46 = 0;
	a47 = 0;
	a48 = 0;
	a49 = 1;

	//cnt0 = 1;

end
////////////////////////////////////////////////////////
/////////
////////////////////////////////////////////////////////

always@(cnt0)
begin 

	if(a10!=0)
	begin
	a00 <= a00 * a10;
	a01 <= a01 * a10;
	a02 <= a02 * a10;
	a03 <= a03 * a10;
	a04 <= a04 * a10;
	a05 <= a05 * a10;
	a06 <= a06 * a10;
	a07 <= a07 * a10;
	a08 <= a08 * a10;
	a09 <= a09 * a10;

	a10 <= a10 * a00;
	a11 <= a11 * a00;
	a12 <= a12 * a00;
	a13 <= a13 * a00;
	a14 <= a14 * a00;
	a15 <= a15 * a00;
	a16 <= a16 * a00;
	a17 <= a17 * a00;
	a18 <= a18 * a00;
	a19 <= a19 * a00;
	end
	//cnt1= 1;
end

always@(cnt1)
begin
	if(a10!=0)
	begin
	a10 <= a10-a00;
	a11 <= a11-a01;
	a12 <= a12-a02;
	a13 <= a13-a03;
	a14 <= a14-a04;
	a15 <= a15-a05;
	a16 <= a16-a06;
	a17 <= a17-a07;
	a18 <= a18-a08;
	a19 <= a19-a09;
	end
	//cnt2 = 1;
end

always@(cnt2)
begin
	if(a20 != 0)
	begin
	a00 <= a00 * a20;
	a01 <= a01 * a20;
	a02 <= a02 * a20;
	a03 <= a03 * a20;
	a04 <= a04 * a20;
	a05 <= a05 * a20;
	a06 <= a06 * a20;
	a07 <= a07 * a20;
	a08 <= a08 * a20;
	a09 <= a09 * a20;

	a20 <= a20 * a00;
	a21 <= a21 * a00;
	a22 <= a22 * a00;
	a23 <= a23 * a00;
	a24 <= a24 * a00;
	a25 <= a25 * a00;
	a26 <= a26 * a00;
	a27 <= a27 * a00;
	a28 <= a28 * a00;
	a29 <= a29 * a00;
	end
	//cnt3 = 1;
end

always@(cnt3)
begin
	if(a20 != 0)
	begin

	a20 <= a20-a00;
	a21 <= a21-a01;
	a22 <= a22-a02;
	a23 <= a23-a03;
	a24 <= a24-a04;
	a25 <= a25-a05;
	a26 <= a26-a06;
	a27 <= a27-a07;
	a28 <= a28-a08;
	a29 <= a29-a09;
	end
	//cnt4 = 1;
end


always@(cnt4)
begin
	if(a30 != 0)
	begin
	
	a00 <= a00 * a30;
	a01 <= a01 * a30;
	a02 <= a02 * a30;
	a03 <= a03 * a30;
	a04 <= a04 * a30;
	a05 <= a05 * a30;
	a06 <= a06 * a30;
	a07 <= a07 * a30;
	a08 <= a08 * a30;
	a09 <= a09 * a30;

	a30 <= a30 * a00;
	a31 <= a31 * a00;
	a32 <= a32 * a00;
	a33 <= a33 * a00;
	a34 <= a34 * a00;
	a35 <= a35 * a00;
	a36 <= a36 * a00;
	a37 <= a37 * a00;
	a38 <= a38 * a00;
	a39 <= a39 * a00;
	end
	//cnt5 = 1;
end

always@(cnt5)
begin
	if(a30 != 0)
	begin

	a30 <= a30-a00;
	a31 <= a31-a01;
	a32 <= a32-a02;
	a33 <= a33-a03;
	a34 <= a34-a04;
	a35 <= a35-a05;
	a36 <= a36-a06;
	a37 <= a37-a07;
	a38 <= a38-a08;
	a39 <= a39-a09;
	end
	//cnt6 = 1;
end


always@(cnt6)
begin
	if(a40 != 0)
	begin
	
	a00 <= a00 * a40;
	a01 <= a01 * a40;
	a02 <= a02 * a40;
	a03 <= a03 * a40;
	a04 <= a04 * a40;
	a05 <= a05 * a40;
	a06 <= a06 * a40;
	a07 <= a07 * a40;
	a08 <= a08 * a40;
	a09 <= a09 * a40;

	a40 <= a40 * a00;
	a41 <= a41 * a00;
	a42 <= a42 * a00;
	a43 <= a43 * a00;
	a44 <= a44 * a00;
	a45 <= a45 * a00;
	a46 <= a46 * a00;
	a47 <= a47 * a00;
	a48 <= a48 * a00;
	a49 <= a49 * a00;
	end
	//cnt7 = 1;
end

always@(cnt7)
begin
	if(a40 != 0)
	begin

	a40 <= a40-a00;
	a41 <= a41-a01;
	a42 <= a42-a02;
	a43 <= a43-a03;
	a44 <= a44-a04;
	a45 <= a45-a05;
	a46 <= a46-a06;
	a47 <= a47-a07;
	a48 <= a48-a08;
	a49 <= a49-a09;
	end
	//cnt8 = 1;
end

/////////////////////////////////////////////////////

always@(cnt8)
begin
	if(a21 != 0)
	begin
	
	a10 <= a10 * a21;
	a11 <= a11 * a21;
	a12 <= a12 * a21;
	a13 <= a13 * a21;
	a14 <= a14 * a21;
	a15 <= a15 * a21;
	a16 <= a16 * a21;
	a17 <= a17 * a21;
	a18 <= a18 * a21;
	a19 <= a19 * a21;

	a20 <= a20 * a11;
	a21 <= a21 * a11;
	a22 <= a22 * a11;
	a23 <= a23 * a11;
	a24 <= a24 * a11;
	a25 <= a25 * a11;
	a26 <= a26 * a11;
	a27 <= a27 * a11;
	a28 <= a28 * a11;
	a29 <= a29 * a11;
	end
	//cnt9 = 1;
end

always@(cnt9)
begin
	if(a21 != 0)
	begin

	a20 <= a20-a10;
	a21 <= a21-a11;
	a22 <= a22-a12;
	a23 <= a23-a13;
	a24 <= a24-a14;
	a25 <= a25-a15;
	a26 <= a26-a16;
	a27 <= a27-a17;
	a28 <= a28-a18;
	a29 <= a29-a19;
	end
	//cnt10 = 1;
end

always@(cnt10)
begin
	if(a31 != 0)
	begin
	
	a10 <= a10 * a31;
	a11 <= a11 * a31;
	a12 <= a12 * a31;
	a13 <= a13 * a31;
	a14 <= a14 * a31;
	a15 <= a15 * a31;
	a16 <= a16 * a31;
	a17 <= a17 * a31;
	a18 <= a18 * a31;
	a19 <= a19 * a31;

	a30 <= a30 * a11;
	a31 <= a31 * a11;
	a32 <= a32 * a11;
	a33 <= a33 * a11;
	a34 <= a34 * a11;
	a35 <= a35 * a11;
	a36 <= a36 * a11;
	a37 <= a37 * a11;
	a38 <= a38 * a11;
	a39 <= a39 * a11;
	end
	//cnt11 = 1;
end

always@(cnt11)
begin
	if(a31 != 0)
	begin

	a30 <= a30-a10;
	a31 <= a31-a11;
	a32 <= a32-a12;
	a33 <= a33-a13;
	a34 <= a34-a14;
	a35 <= a35-a15;
	a36 <= a36-a16;
	a37 <= a37-a17;
	a38 <= a38-a18;
	a39 <= a39-a19;
	end
	//cnt12 = 1;
end

always@(cnt12)
begin
	if(a41 != 0)
	begin
	
	a10 <= a10 * a41;
	a11 <= a11 * a41;
	a12 <= a12 * a41;
	a13 <= a13 * a41;
	a14 <= a14 * a41;
	a15 <= a15 * a41;
	a16 <= a16 * a41;
	a17 <= a17 * a41;
	a18 <= a18 * a41;
	a19 <= a19 * a41;

	a40 <= a40 * a11;
	a41 <= a41 * a11;
	a42 <= a42 * a11;
	a43 <= a43 * a11;
	a44 <= a44 * a11;
	a45 <= a45 * a11;
	a46 <= a46 * a11;
	a47 <= a47 * a11;
	a48 <= a48 * a11;
	a49 <= a49 * a11;
	end
	//cnt13 = 1;
end

always@(cnt13)
begin
	if(a41 != 0)
	begin

	a40 <= a40-a10;
	a41 <= a41-a11;
	a42 <= a42-a12;
	a43 <= a43-a13;
	a44 <= a44-a14;
	a45 <= a45-a15;
	a46 <= a46-a16;
	a47 <= a47-a17;
	a48 <= a48-a18;
	a49 <= a49-a19;
	end
	//cnt14 = 1;
end

//////////////////////////////////////////////////

always@(cnt14)
begin
	if(a32 != 0)
	begin
	
	a20 <= a20 * a32;
	a21 <= a21 * a32;
	a22 <= a22 * a32;
	a23 <= a23 * a32;
	a24 <= a24 * a32;
	a25 <= a25 * a32;
	a26 <= a26 * a32;
	a27 <= a27 * a32;
	a28 <= a28 * a32;
	a29 <= a29 * a32;

	a30 <= a30 * a22;
	a31 <= a31 * a22;
	a32 <= a32 * a22;
	a33 <= a33 * a22;
	a34 <= a34 * a22;
	a35 <= a35 * a22;
	a36 <= a36 * a22;
	a37 <= a37 * a22;
	a38 <= a38 * a22;
	a39 <= a39 * a22;
	end
	//cnt15 = 1;
end

always@(cnt15)
begin
	if(a32 != 0)
	begin

	a30 <= a30-a20;
	a31 <= a31-a21;
	a32 <= a32-a22;
	a33 <= a33-a23;
	a34 <= a34-a24;
	a35 <= a35-a25;
	a36 <= a36-a26;
	a37 <= a37-a27;
	a38 <= a38-a28;
	a39 <= a39-a29;
	end
	//cnt16 = 1;
end

always@(cnt16)
begin
	if(a42 != 0)
	begin
	
	a20 <= a20 * a42;
	a21 <= a21 * a42;
	a22 <= a22 * a42;
	a23 <= a23 * a42;
	a24 <= a24 * a42;
	a25 <= a25 * a42;
	a26 <= a26 * a42;
	a27 <= a27 * a42;
	a28 <= a28 * a42;
	a29 <= a29 * a42;

	a40 <= a40 * a22;
	a41 <= a41 * a22;
	a42 <= a42 * a22;
	a43 <= a43 * a22;
	a44 <= a44 * a22;
	a45 <= a45 * a22;
	a46 <= a46 * a22;
	a47 <= a47 * a22;
	a48 <= a48 * a22;
	a49 <= a49 * a22;
	end
	//cnt17 = 1;
end

always@(cnt17)
begin
	if(a42 != 0)
	begin

	a40 <= a40-a20;
	a41 <= a41-a21;
	a42 <= a42-a22;
	a43 <= a43-a23;
	a44 <= a44-a24;
	a45 <= a45-a25;
	a46 <= a46-a26;
	a47 <= a47-a27;
	a48 <= a48-a28;
	a49 <= a49-a29;
	end
	//cnt18 = 1;
end


//////////////////////////////////////////////////

always@(cnt18)
begin
	if(a43 != 0)
	begin
	
	a30 <= a30 * a43;
	a31 <= a31 * a43;
	a32 <= a32 * a43;
	a33 <= a33 * a43;
	a34 <= a34 * a43;
	a35 <= a35 * a43;
	a36 <= a36 * a43;
	a37 <= a37 * a43;
	a38 <= a38 * a43;
	a39 <= a39 * a43;

	a40 <= a40 * a33;
	a41 <= a41 * a33;
	a42 <= a42 * a33;
	a43 <= a43 * a33;
	a44 <= a44 * a33;
	a45 <= a45 * a33;
	a46 <= a46 * a33;
	a47 <= a47 * a33;
	a48 <= a48 * a33;
	a49 <= a49 * a33;
	end
	//cnt19 = 1;
end

always@(cnt19)
begin
	if(a43 != 0)
	begin

	a40 <= a40-a30;
	a41 <= a41-a31;
	a42 <= a42-a32;
	a43 <= a43-a33;
	a44 <= a44-a34;
	a45 <= a45-a35;
	a46 <= a46-a36;
	a47 <= a47-a37;
	a48 <= a48-a38;
	a49 <= a49-a39;
	end
	//cnt20 = 1;
end

//////////////////////////////////////////////////////////
/////////
//////////////////////////////////////////////////////////

always@(cnt20)
begin
	if(a34 != 0)
	begin 

	a40 <= a40 * a34;
	a41 <= a41 * a34;
	a42 <= a42 * a34;
	a43 <= a43 * a34;
	a44 <= a44 * a34;
	a45 <= a45 * a34;
	a46 <= a46 * a34;
	a47 <= a47 * a34;
	a48 <= a48 * a34;
	a49 <= a49 * a34;
	
	a30 <= a30 * a44;
	a31 <= a31 * a44;
	a32 <= a32 * a44;
	a33 <= a33 * a44;
	a34 <= a34 * a44;
	a35 <= a35 * a44;
	a36 <= a36 * a44;
	a37 <= a37 * a44;
	a38 <= a38 * a44;
	a39 <= a39 * a44;
	end
	//cnt21 = 1;
end

always@(cnt21)
begin
	if(a34 != 0)
	begin
	
	a30 <= a30-a40;
	a31 <= a31-a41;
	a32 <= a32-a42;
	a33 <= a33-a43;
	a34 <= a34-a44;
	a35 <= a35-a45;
	a36 <= a36-a46;
	a37 <= a37-a47;
	a38 <= a38-a48;
	a39 <= a39-a49;
	end
	//cnt22 = 1;
end

always@(cnt22)
begin
	if(a24 != 0)
	begin 

	a40 <= a40 * a24;
	a41 <= a41 * a24;
	a42 <= a42 * a24;
	a43 <= a43 * a24;
	a44 <= a44 * a24;
	a45 <= a45 * a24;
	a46 <= a46 * a24;
	a47 <= a47 * a24;
	a48 <= a48 * a24;
	a49 <= a49 * a24;
	
	a20 <= a20 * a44;
	a21 <= a21 * a44;
	a22 <= a22 * a44;
	a23 <= a23 * a44;
	a24 <= a24 * a44;
	a25 <= a25 * a44;
	a26 <= a26 * a44;
	a27 <= a27 * a44;
	a28 <= a28 * a44;
	a29 <= a29 * a44;
	end
	//cnt23 = 1;
end

always@(cnt23)
begin
	if(a24 != 0)
	begin
	
	a20 <= a20-a40;
	a21 <= a21-a41;
	a22 <= a22-a42;
	a23 <= a23-a43;
	a24 <= a24-a44;
	a25 <= a25-a45;
	a26 <= a26-a46;
	a27 <= a27-a47;
	a28 <= a28-a48;
	a29 <= a29-a49;
	end
	//cnt24 = 1;
end

always@(cnt24)
begin
	if(a14 != 0)
	begin 

	a40 <= a40 * a14;
	a41 <= a41 * a14;
	a42 <= a42 * a14;
	a43 <= a43 * a14;
	a44 <= a44 * a14;
	a45 <= a45 * a14;
	a46 <= a46 * a14;
	a47 <= a47 * a14;
	a48 <= a48 * a14;
	a49 <= a49 * a14;
	
	a10 <= a10 * a44;
	a11 <= a11 * a44;
	a12 <= a12 * a44;
	a13 <= a13 * a44;
	a14 <= a14 * a44;
	a15 <= a15 * a44;
	a16 <= a16 * a44;
	a17 <= a17 * a44;
	a18 <= a18 * a44;
	a19 <= a19 * a44;
	end
	//cnt25 = 1;
end

always@(cnt25)
begin
	if(a14 != 0)
	begin
	
	a10 <= a10-a40;
	a11 <= a11-a41;
	a12 <= a12-a42;
	a13 <= a13-a43;
	a14 <= a14-a44;
	a15 <= a15-a45;
	a16 <= a16-a46;
	a17 <= a17-a47;
	a18 <= a18-a48;
	a19 <= a19-a49;
	end
	//cnt26 = 1;
end

always@(cnt26)
begin
	if(a04 != 0)
	begin 

	a40 <= a40 * a04;
	a41 <= a41 * a04;
	a42 <= a42 * a04;
	a43 <= a43 * a04;
	a44 <= a44 * a04;
	a45 <= a45 * a04;
	a46 <= a46 * a04;
	a47 <= a47 * a04;
	a48 <= a48 * a04;
	a49 <= a49 * a04;

	a00 <= a00 * a44;
	a01 <= a01 * a44;
	a02 <= a02 * a44;
	a03 <= a03 * a44;
	a04 <= a04 * a44;
	a05 <= a05 * a44;
	a06 <= a06 * a44;
	a07 <= a07 * a44;
	a08 <= a08 * a44;
	a09 <= a09 * a44;
	end
	//cnt27 = 1;
end

always@(cnt27)
begin
	if(a04 != 0)
	begin
	
	a00 <= a00-a40;
	a01 <= a01-a41;
	a02 <= a02-a42;
	a03 <= a03-a43;
	a04 <= a04-a44;
	a05 <= a05-a45;
	a06 <= a06-a46;
	a07 <= a07-a47;
	a08 <= a08-a48;
	a09 <= a09-a49;
	end
	//cnt28 = 1;
end

////////////////////////////////////////////////

always@(cnt28)
begin
	if(a23 != 0)
	begin

	a30 <= a30 * a23;
	a31 <= a31 * a23;
	a32 <= a32 * a23;
	a33 <= a33 * a23;
	a34 <= a34 * a23;
	a35 <= a35 * a23;
	a36 <= a36 * a23;
	a37 <= a37 * a23;
	a38 <= a38 * a23;
	a39 <= a39 * a23;
	
	a20 <= a20 * a33;
	a21 <= a21 * a33;
	a22 <= a22 * a33;
	a23 <= a23 * a33;
	a24 <= a24 * a33;
	a25 <= a25 * a33;
	a26 <= a26 * a33;
	a27 <= a27 * a33;
	a28 <= a28 * a33;
	a29 <= a29 * a33;
	end
	//cnt29 = 1;
end

always@(cnt29)
begin
	if(a23 != 0)
	begin
	
	a20 <= a20-a30;
	a21 <= a21-a31;
	a22 <= a22-a32;
	a23 <= a23-a33;
	a24 <= a24-a34;
	a25 <= a25-a35;
	a26 <= a26-a36;
	a27 <= a27-a37;
	a28 <= a28-a38;
	a29 <= a29-a39;
	end
	//cnt30 = 1;
end

always@(cnt30)
begin
	if(a13 != 0)
	begin

	a30 <= a30 * a13;
	a31 <= a31 * a13;
	a32 <= a32 * a13;
	a33 <= a33 * a13;
	a34 <= a34 * a13;
	a35 <= a35 * a13;
	a36 <= a36 * a13;
	a37 <= a37 * a13;
	a38 <= a38 * a13;
	a39 <= a39 * a13;
	
	a10 <= a10 * a33;
	a11 <= a11 * a33;
	a12 <= a12 * a33;
	a13 <= a13 * a33;
	a14 <= a14 * a33;
	a15 <= a15 * a33;
	a16 <= a16 * a33;
	a17 <= a17 * a33;
	a18 <= a18 * a33;
	a19 <= a19 * a33;
	end
	//cnt31 = 1;
end

always@(cnt31)
begin
	if(a13 != 0)
	begin
	
	a10 <= a10-a30;
	a11 <= a11-a31;
	a12 <= a12-a32;
	a13 <= a13-a33;
	a14 <= a14-a34;
	a15 <= a15-a35;
	a16 <= a16-a36;
	a17 <= a17-a37;
	a18 <= a18-a38;
	a19 <= a19-a39;
	end
	//cnt32 = 1;
end

always@(cnt32)
begin
	if(a03 != 0)
	begin

	a30 <= a30 * a03;
	a31 <= a31 * a03;
	a32 <= a32 * a03;
	a33 <= a33 * a03;
	a34 <= a34 * a03;
	a35 <= a35 * a03;
	a36 <= a36 * a03;
	a37 <= a37 * a03;
	a38 <= a38 * a03;
	a39 <= a39 * a03;
	
	a00 <= a00 * a33;
	a01 <= a01 * a33;
	a02 <= a02 * a33;
	a03 <= a03 * a33;
	a04 <= a04 * a33;
	a05 <= a05 * a33;
	a06 <= a06 * a33;
	a07 <= a07 * a33;
	a08 <= a08 * a33;
	a09 <= a09 * a33;
	end
	//cnt33 = 1;
end

always@(cnt33)
begin
	if(a03 != 0)
	begin
	
	a00 <= a00-a30;
	a01 <= a01-a31;
	a02 <= a02-a32;
	a03 <= a03-a33;
	a04 <= a04-a34;
	a05 <= a05-a35;
	a06 <= a06-a36;
	a07 <= a07-a37;
	a08 <= a08-a38;
	a09 <= a09-a39;
	end
	//cnt34 = 1;
end

//////////////////////////////////////////////////

always@(cnt34)
begin
	if(a12 != 0)
	begin

	a20 <= a20 * a12;
	a21 <= a21 * a12;
	a22 <= a22 * a12;
	a23 <= a23 * a12;
	a24 <= a24 * a12;
	a25 <= a25 * a12;
	a26 <= a26 * a12;
	a27 <= a27 * a12;
	a28 <= a28 * a12;
	a29 <= a29 * a12;
	
	a10 <= a10 * a22;
	a11 <= a11 * a22;
	a12 <= a12 * a22;
	a13 <= a13 * a22;
	a14 <= a14 * a22;
	a15 <= a15 * a22;
	a16 <= a16 * a22;
	a17 <= a17 * a22;
	a18 <= a18 * a22;
	a19 <= a19 * a22;
	end
	//cnt35 = 1;
end

always@(cnt35)
begin
	if(a12 != 0)
	begin
	
	a10 <= a10-a20;
	a11 <= a11-a21;
	a12 <= a12-a22;
	a13 <= a13-a23;
	a14 <= a14-a24;
	a15 <= a15-a25;
	a16 <= a16-a26;
	a17 <= a17-a27;
	a18 <= a18-a28;
	a19 <= a19-a29;
	end
	//cnt36= 1;
end

always@(cnt36)
begin
	if(a02 != 0)
	begin

	a20 <= a20 * a02;
	a21 <= a21 * a02;
	a22 <= a22 * a02;
	a23 <= a23 * a02;
	a24 <= a24 * a02;
	a25 <= a25 * a02;
	a26 <= a26 * a02;
	a27 <= a27 * a02;
	a28 <= a28 * a02;
	a29 <= a29 * a02;
	
	a00 <= a00 * a22;
	a01 <= a01 * a22;
	a02 <= a02 * a22;
	a03 <= a03 * a22;
	a04 <= a04 * a22;
	a05 <= a05 * a22;
	a06 <= a06 * a22;
	a07 <= a07 * a22;
	a08 <= a08 * a22;
	a09 <= a09 * a22;
	end
	//cnt37 = 1;
end

always@(cnt37)
begin
	if(a02 != 0)
	begin
	
	a00 <= a00-a30;
	a01 <= a01-a31;
	a02 <= a02-a32;
	a03 <= a03-a33;
	a04 <= a04-a34;
	a05 <= a05-a35;
	a06 <= a06-a36;
	a07 <= a07-a37;
	a08 <= a08-a38;
	a09 <= a09-a39;
	end
	//cnt38= 1;
end

//////////////////////////////////////////////////////

always@(cnt38)
begin
	if(a01 != 0)
	begin
	
	a10 <= a10 * a01;
	a11 <= a11 * a01;
	a12 <= a12 * a01;
	a13 <= a13 * a01;
	a14 <= a14 * a01;
	a15 <= a15 * a01;
	a16 <= a16 * a01;
	a17 <= a17 * a01;
	a18 <= a18 * a01;
	a19 <= a19 * a01;
	
	a00 <= a00 * a11;
	a01 <= a01 * a11;
	a02 <= a02 * a11;
	a03 <= a03 * a11;
	a04 <= a04 * a11;
	a05 <= a05 * a11;
	a06 <= a06 * a11;
	a07 <= a07 * a11;
	a08 <= a08 * a11;
	a09 <= a09 * a11;
	end
	//cnt39 = 1;
	
end

always@(cnt39)
begin
	if(a01 != 0)
	begin
	
	a00 <= a00 - a10;
	a01 <= a01 - a11;
	a02 <= a02 - a12;
	a03 <= a03 - a13;
	a04 <= a04 - a14;
	a05 <= a05 - a15;
	a06 <= a06 - a16;
	a07 <= a07 - a17;
	a08 <= a08 - a18;
	a09 <= a09 - a19;
	end
end

always@(cnt40)
begin
	
	if(cnt40 == 1'b1)
	begin
		ans00 <= a05;
		ans01 <= a06;
		ans02 <= a07;
		ans03 <= a08;
		ans04 <= a09;
		
		
		ans10 <= a15;
		ans11 <= a16;
		ans12 <= a17;
		ans13 <= a18;
		ans14 <= a19;
		
		
		ans20 <= a25;
		ans21 <= a26;
		ans22 <= a27;
		ans23 <= a28;
		ans24 <= a29;
		
		ans30 <= a35;
		ans31 <= a36;
		ans32 <= a37;
		ans33 <= a38;
		ans34 <= a39;
		
		
		ans40 <= a45;
		ans41 <= a46;
		ans42 <= a47;
		ans43 <= a48;
		ans44 <= a49;
		
		detA = (((a00 * a11) * (a22 * a33)) * a44);
	end
end

endmodule
