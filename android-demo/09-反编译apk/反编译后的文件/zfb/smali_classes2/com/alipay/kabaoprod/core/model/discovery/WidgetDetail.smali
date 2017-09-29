.class public Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "WidgetDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasData:Z

.field public outlineContent:Ljava/lang/String;

.field public redMark:Z

.field public redMarkTip:Ljava/lang/String;

.field public showStatus:Z

.field public tips:Ljava/lang/String;

.field public widgetId:Ljava/lang/String;

.field public widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->redMark:Z

    .line 75
    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->showStatus:Z

    .line 31
    return-void
.end method
