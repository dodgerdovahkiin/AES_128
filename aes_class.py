import numpy as np

class AES:
    #S-box
    sbox =  np.array([0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67,
            0x2b, 0xfe, 0xd7, 0xab, 0x76, 0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59,
            0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, 0xb7,
            0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1,
            0x71, 0xd8, 0x31, 0x15, 0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05,
            0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75, 0x09, 0x83,
            0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29,
            0xe3, 0x2f, 0x84, 0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
            0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf, 0xd0, 0xef, 0xaa,
            0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c,
            0x9f, 0xa8, 0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc,
            0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2, 0xcd, 0x0c, 0x13, 0xec,
            0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19,
            0x73, 0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee,
            0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb, 0xe0, 0x32, 0x3a, 0x0a, 0x49,
            0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
            0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4,
            0xea, 0x65, 0x7a, 0xae, 0x08, 0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6,
            0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a, 0x70,
            0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9,
            0x86, 0xc1, 0x1d, 0x9e, 0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e,
            0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf, 0x8c, 0xa1,
            0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0,
            0x54, 0xbb, 0x16])   
    
    #Inverse S-box
    isbox = np.array([0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3,
            0x9e, 0x81, 0xf3, 0xd7, 0xfb , 0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f,
            0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb , 0x54,
            0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b,
            0x42, 0xfa, 0xc3, 0x4e , 0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24,
            0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25 , 0x72, 0xf8,
            0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d,
            0x65, 0xb6, 0x92 , 0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda,
            0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84 , 0x90, 0xd8, 0xab,
            0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3,
            0x45, 0x06 , 0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1,
            0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b , 0x3a, 0x91, 0x11, 0x41,
            0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6,
            0x73 , 0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9,
            0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e , 0x47, 0xf1, 0x1a, 0x71, 0x1d,
            0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b ,
            0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0,
            0xfe, 0x78, 0xcd, 0x5a, 0xf4 , 0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07,
            0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f , 0x60,
            0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f,
            0x93, 0xc9, 0x9c, 0xef , 0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5,
            0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61 , 0x17, 0x2b,
            0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55,
            0x21, 0x0c, 0x7d])
    
    #Round constant values (more values than reqd.)
    RCON=np.array([0x01,0x02,0x04,0x08,
                   0x10,0x20,0x40,0x80,
                   0x1b,0x36,0x6c,0xd8,
                   0xab,0x4d,0x9a,0x2f,
                   0x5e,0xbc,0x63,0xc6,
                   0x97,0x35,0x6a,0xd4,
                   0xb3,0x7d,0xfa,0xef,
                   0xc5,0x91,0x39,0x72,
                   0xe4,0xd3,0xbd,0x61,
                   0xc2,0x9f,0x25,0x4a,
                   0x94,0x33,0x66,0xcc])
    
    #Fetch substitute value from S-box
    def getSvalue(self,x):
        return self.sbox[x]
    
    #Fetch substitute value from inverse S-box
    def invSvalue(self,x):
        return self.isbox[x]
    
    #SubBytes transformation
    def SubBytes(self,smat):
        for i in range(0,4):
            for j in range(0,4):
                smat[i,j]=self.getSvalue(smat[i,j])
        return smat
    
    #Inverse SubBytes transformation
    def invSubBytes(self,smat):
        for i in range(0,4):
            for j in range(0,4):
                smat[i,j]=self.invSvalue(smat[i,j])
        return smat
    
    #ShiftRows transformation
    def ShiftRows(self,smat):
        for i in range(1,4):
            j=i
            temp=0
            while j>0:
                temp=smat[i,0]
                smat[i,0]=smat[i,1]
                smat[i,1]=smat[i,2]
                smat[i,2]=smat[i,3]
                smat[i,3]=temp
                j-=1
        return smat
    
    #Inverse ShiftRows transformation
    def invShiftRows(self,smat):
        for i in range(1,4):
            j=i
            temp=0
            while j>0:
                temp=smat[i,3]
                smat[i,3]=smat[i,2]
                smat[i,2]=smat[i,1]
                smat[i,1]=smat[i,0]
                smat[i,0]=temp
                j-=1
        return smat
    
    #AddRoundKey transformation
    def AddRoundKey(self,smat,key):
        smat=smat^key
        return smat
    
    #Generate KeySchedule
    #KeySchedule is the same for both encryption and decryption
    def KeySchedule(self,key):
        expanded_key=np.zeros((4,44),dtype=np.uint8)
        expanded_key[:,0:4]=key
        for j in range(4,44):
            if j%4==0:
                for i in range(0,4):
                    expanded_key[i,j]=self.getSvalue(expanded_key[i,j-1])
                temp=expanded_key[0,j]
                expanded_key[0,j]=expanded_key[1,j]
                expanded_key[1,j]=expanded_key[2,j]
                expanded_key[2,j]=expanded_key[3,j]
                expanded_key[3,j]=temp
                expanded_key[:,j]=expanded_key[:,j]^expanded_key[:,j-4]
                expanded_key[0,j]=expanded_key[0,j]^self.RCON[int(j/4)-1]
            else:
                expanded_key[:,j]=expanded_key[:,j-1]^expanded_key[:,j-4]
        return expanded_key
    
    #Galois multiplication for 1,2,3
    def multiply(self,x,n):
        m=x
        if n==1:
            m=np.uint8(m)
        elif n==2:
            temp=m
            m=m<<1
            if int(temp/128)==1:
                m=m^0x1b
            m=np.uint8(m)
        elif n==3:
            temp=m
            m=m<<1
            if int(temp/128)==1:
                m=m^0x1b
            m=m^temp
            m=np.uint8(m)
        return m
    
    #Galois multiplication for 9,11,13, and 14 (for decryption)
    def inv_multiply(self,x,n):
        m=x
        if n==9:
            m=self.multiply(self.multiply(self.multiply(x,2),2),2)^x
            m=np.uint8(m)
        elif n==11:
            m=self.multiply((self.multiply(self.multiply(x,2),2)^x),2)^x
            m=np.uint8(m)
        elif n==13:
            m=self.multiply(self.multiply((self.multiply(x,2)^x),2),2)^x
            m=np.uint8(m)
        elif n==14:
            m=self.multiply((self.multiply((self.multiply(x,2)^x),2)^x),2)
            m=np.uint8(m)
        return m
    
    #MixColumns transformation
    def MixColumns(self,smat):
        smat2=np.zeros((4,4),dtype=np.uint8)
        colmat=np.array([[2,3,1,1],
                         [1,2,3,1],
                         [1,1,2,3],
                         [3,1,1,2]],dtype=np.uint8)
        for k in range(0,4):
            work=smat[:,k]
            temp=np.zeros(4)
            np.set_printoptions(formatter={'int':hex})
            for i in range(0,4):
                sum=0
                for j in range(0,4):
                    sum=sum^self.multiply(work[j],colmat[i,j])
                temp[i]=sum
            smat2[:,k]=temp
        return smat2
    
    #Inverse MixColumns transformation
    def invMixColumns(self,smat):
        smat2=np.zeros((4,4),dtype=np.uint8)
        colmat=np.array([[0x0e,0x0b,0x0d,0x09],
                         [0x09,0x0e,0x0b,0x0d],
                         [0x0d,0x09,0x0e,0x0b],
                         [0x0b,0x0d,0x09,0x0e]],dtype=np.uint8)
        for k in range(0,4):
            work=smat[:,k]
            temp=np.zeros(4)
            np.set_printoptions(formatter={'int':hex})
            for i in range(0,4):
                sum=0
                for j in range(0,4):
                    sum=sum^self.inv_multiply(work[j],colmat[i,j])
                temp[i]=sum
            smat2[:,k]=temp
        return smat2
    
    #Perform encryption
    def encrypt(self,input_mat,input_key):
        expanded_key=self.KeySchedule(input_key)
        state_matrix=self.AddRoundKey(input_mat,input_key)
        np.set_printoptions(formatter={'int':hex})
        #print("0",np.array(state_matrix))
        for i in range(1,10):
            state_matrix=self.SubBytes(state_matrix)
            #if i==1:
            #    print(np.array(state_matrix))
            state_matrix=self.ShiftRows(state_matrix)
           
            state_matrix=self.MixColumns(state_matrix)
            state_matrix=self.AddRoundKey(state_matrix,expanded_key[:,4*i:4*i+4])
            #print(i,np.array(state_matrix))
        state_matrix=self.SubBytes(state_matrix)
        state_matrix=self.ShiftRows(state_matrix)
        state_matrix=self.AddRoundKey(state_matrix,expanded_key[:,40:44])
        return state_matrix
    
    #Perform decryption
    def decrypt(self,cipher_text,input_key):
        expanded_key=self.KeySchedule(input_key)
        state_matrix=self.AddRoundKey(cipher_text,expanded_key[:,40:44])
        state_matrix=self.invShiftRows(state_matrix)
        state_matrix=self.invSubBytes(state_matrix)
        for i in range(1,10):
            state_matrix=self.AddRoundKey(state_matrix,expanded_key[:,40-4*i:44-4*i])
            state_matrix=self.invMixColumns(state_matrix)
            state_matrix=self.invShiftRows(state_matrix)
            state_matrix=self.invSubBytes(state_matrix)
        state_matrix=self.AddRoundKey(state_matrix,expanded_key[:,0:4])    
        return state_matrix
    
    
    
    
    