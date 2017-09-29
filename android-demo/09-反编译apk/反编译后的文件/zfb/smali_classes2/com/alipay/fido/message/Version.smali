.class public Lcom/alipay/fido/message/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field mj:I

.field mn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/alipay/fido/message/Setting;->majorVersion:I

    iput v0, p0, Lcom/alipay/fido/message/Version;->mj:I

    .line 22
    sget v0, Lcom/alipay/fido/message/Setting;->minorVersion:I

    iput v0, p0, Lcom/alipay/fido/message/Version;->mn:I

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/alipay/fido/message/Setting;->majorVersion:I

    iput v0, p0, Lcom/alipay/fido/message/Version;->mj:I

    .line 22
    sget v0, Lcom/alipay/fido/message/Setting;->minorVersion:I

    iput v0, p0, Lcom/alipay/fido/message/Version;->mn:I

    .line 38
    iput p1, p0, Lcom/alipay/fido/message/Version;->mj:I

    .line 39
    iput p2, p0, Lcom/alipay/fido/message/Version;->mn:I

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    check-cast p1, Lcom/alipay/fido/message/Version;

    .line 102
    iget v2, p0, Lcom/alipay/fido/message/Version;->mj:I

    iget v3, p1, Lcom/alipay/fido/message/Version;->mj:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget v2, p0, Lcom/alipay/fido/message/Version;->mn:I

    iget v3, p1, Lcom/alipay/fido/message/Version;->mn:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public getMj()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/fido/message/Version;->mj:I

    return v0
.end method

.method public getMn()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/fido/message/Version;->mn:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/fido/message/Version;->mj:I

    add-int/lit8 v0, v0, 0x1f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/alipay/fido/message/Version;->mn:I

    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public setMj(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/alipay/fido/message/Version;->mj:I

    .line 58
    return-void
.end method

.method public setMn(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/alipay/fido/message/Version;->mn:I

    .line 76
    return-void
.end method
