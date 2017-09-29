.class public Lcom/alipay/mobile/emotion/model/EmoiPackageModel;
.super Ljava/lang/Object;
.source "EmoiPackageModel.java"


# instance fields
.field public bIconFid:Ljava/lang/String;

.field public emotionPageNum:I

.field public iconResourceId:I

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public resUrl:Ljava/lang/String;

.field public sIconFid:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    check-cast p1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public getEmotionPageNum()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    return v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->resUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    return v0
.end method

.method public getbIconFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->bIconFid:Ljava/lang/String;

    return-object v0
.end method

.method public getsIconFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->sIconFid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 119
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setEmotionPageNum(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 112
    return-void
.end method

.method public setIconResourceId(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 104
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setResUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->resUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    .line 64
    return-void
.end method

.method public setbIconFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->bIconFid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setsIconFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->sIconFid:Ljava/lang/String;

    .line 80
    return-void
.end method
