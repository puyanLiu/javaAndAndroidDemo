.class public Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public extInfos:Ljava/util/Map;
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

.field public hidden:Z

.field public iconUrl:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public jumpUrl:Ljava/lang/String;

.field public mainInfo:Ljava/lang/String;

.field public secondaryInfo:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public useCache:Z

.field public widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->useCache:Z

    return-void
.end method
