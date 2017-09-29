.class public Lcom/alipay/mobile/common/transportext/Transport$Activating;
.super Ljava/lang/Object;
.source "Transport.java"


# instance fields
.field public cfgLongLink:Ljava/util/Map;
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

.field public cfgShortLink:Ljava/util/Map;
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

.field public domainLongLink:Ljava/lang/String;

.field public domainShortLink:Ljava/lang/String;

.field public id:J

.field public linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

.field public netMajor:Ljava/lang/String;

.field public netMinor:Ljava/lang/String;

.field public service:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/alipay/mobile/common/transportext/amnet/Channel;",
            ">;"
        }
    .end annotation
.end field

.field public storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
