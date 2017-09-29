.class public Lcom/alipay/mobile/beehive/template/model/BaseResult;
.super Ljava/lang/Object;
.source "BaseResult.java"


# instance fields
.field public mainInfo:Ljava/lang/String;

.field public resultFlows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/template/model/ResultFlow;",
            ">;"
        }
    .end annotation
.end field

.field public secondaryInfo:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
