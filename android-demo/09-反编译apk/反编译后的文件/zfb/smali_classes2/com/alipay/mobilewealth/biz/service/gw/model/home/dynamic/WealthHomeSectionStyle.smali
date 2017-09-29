.class public Lcom/alipay/mobilewealth/biz/service/gw/model/home/dynamic/WealthHomeSectionStyle;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public columnModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/dynamic/WealthHomeModuleStyle;",
            ">;"
        }
    .end annotation
.end field

.field public lineModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/dynamic/WealthHomeModuleStyle;",
            ">;"
        }
    .end annotation
.end field

.field public order:I

.field public sectionId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public topModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/dynamic/WealthHomeModuleStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
