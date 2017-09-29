.class public Lcom/alipay/fido/message/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field protected data:[B

.field protected offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 31
    iput-object p1, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    .line 32
    return-void
.end method

.method public static wrap([B)Lcom/alipay/fido/message/ByteArray;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/alipay/fido/message/ByteArray;

    invoke-direct {v0, p0}, Lcom/alipay/fido/message/ByteArray;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public end()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    iget-object v1, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    return v0
.end method

.method public readByte()B
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readUINT()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    invoke-static {v0, v1}, Lcom/alipay/fido/message/ByteUtils;->toInt([BI)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 122
    return v0
.end method

.method public readUINT16()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    invoke-static {v0, v1}, Lcom/alipay/fido/message/ByteUtils;->toUInt16([BI)I

    move-result v0

    .line 110
    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 111
    return v0
.end method

.method public resetOffset()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 148
    return-void
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    .line 68
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 50
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    invoke-static {p1, v0, v1}, Lcom/alipay/fido/message/ByteUtils;->write(I[BI)V

    .line 77
    iget v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 78
    return-void
.end method

.method public write([BI)V
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v2, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public writeUINT16(I)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/fido/message/ByteArray;->data:[B

    iget v1, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    invoke-static {p1, v0, v1}, Lcom/alipay/fido/message/ByteUtils;->writeUInt16(I[BI)V

    .line 87
    iget v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/fido/message/ByteArray;->offset:I

    .line 88
    return-void
.end method
