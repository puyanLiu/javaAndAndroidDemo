.class public Lcom/alipay/kabaoprod/core/model/model/ShareInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "ShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public isCapture:Z

.field public shortUrl:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
