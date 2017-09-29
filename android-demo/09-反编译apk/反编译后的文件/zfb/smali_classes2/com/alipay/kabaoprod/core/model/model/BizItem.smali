.class public Lcom/alipay/kabaoprod/core/model/model/BizItem;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "BizItem.java"


# instance fields
.field public bizItemCode:Ljava/lang/String;

.field public bizItemName:Ljava/lang/String;

.field public bizItemProp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizItemValue:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    .line 30
    return-void
.end method


# virtual methods
.method public getBizItemCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBizItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getBizItemProp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemProp:Ljava/util/Map;

    return-object v0
.end method

.method public getBizItemValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    return v0
.end method

.method public setBizItemCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBizItemName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setBizItemProp(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemProp:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public setBizItemValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemValue:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    .line 96
    return-void
.end method
