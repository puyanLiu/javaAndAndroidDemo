.class public Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "IndexPassDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public freeze:Z

.field public hidden:Z

.field public isMark:Z

.field public outlineContent:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->isMark:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->freeze:Z

    .line 34
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->hidden:Z

    .line 10
    return-void
.end method
