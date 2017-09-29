.class public Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;
.super Ljava/lang/Object;
.source "PageInfo.java"


# instance fields
.field private index:I

.field private listIndex:I

.field private listTop:I

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->index:I

    return v0
.end method

.method public getListIndex()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->listIndex:I

    return v0
.end method

.method public getListTop()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->listTop:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->type:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->index:I

    .line 56
    return-void
.end method

.method public setListIndex(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->listIndex:I

    .line 64
    return-void
.end method

.method public setListTop(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->listTop:I

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->type:I

    .line 48
    return-void
.end method
