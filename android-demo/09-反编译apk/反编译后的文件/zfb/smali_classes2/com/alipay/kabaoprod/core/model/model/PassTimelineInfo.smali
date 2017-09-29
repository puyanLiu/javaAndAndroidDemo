.class public Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PassTimelineInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public passDate:Ljava/lang/String;

.field public passList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->passDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->passList:Ljava/util/List;

    return-object v0
.end method

.method public setPassDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->passDate:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPassList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->passList:Ljava/util/List;

    .line 36
    return-void
.end method
