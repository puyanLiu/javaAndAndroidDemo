.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassBaseInfoListReq;
.super Ljava/lang/Object;
.source "PassBaseInfoListReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public customerId:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public passCategory:Ljava/lang/String;

.field public productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
