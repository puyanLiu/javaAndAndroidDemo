.class public Lcom/alipay/fido/message/LV;
.super Ljava/lang/Object;
.source "LV.java"


# instance fields
.field protected length:I

.field protected value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/alipay/fido/message/LV;->length:I

    .line 48
    iput-object p2, p0, Lcom/alipay/fido/message/LV;->value:[B

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/fido/message/LV;->value:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/fido/message/LV;->length:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/fido/message/LV;->value:[B

    return-object v0
.end method

.method public setLength(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/alipay/fido/message/LV;->length:I

    .line 67
    return-void
.end method

.method public setValue([B)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/fido/message/LV;->value:[B

    .line 85
    return-void
.end method
