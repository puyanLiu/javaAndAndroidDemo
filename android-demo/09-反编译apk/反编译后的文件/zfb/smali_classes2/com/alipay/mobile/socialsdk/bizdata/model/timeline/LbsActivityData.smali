.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;
.super Ljava/lang/Object;
.source "LbsActivityData.java"


# instance fields
.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public from:Ljava/lang/String;

.field public hasMore:Z

.field public lastActivityId:Ljava/lang/String;

.field public resultStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
