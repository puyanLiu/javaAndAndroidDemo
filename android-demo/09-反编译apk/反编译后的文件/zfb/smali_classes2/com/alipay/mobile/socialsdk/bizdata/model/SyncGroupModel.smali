.class public Lcom/alipay/mobile/socialsdk/bizdata/model/SyncGroupModel;
.super Ljava/lang/Object;
.source "SyncGroupModel.java"


# instance fields
.field public config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

.field public groupBreif:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

.field public members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public operation:Ljava/lang/String;

.field public permissions:Ljava/util/List;
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
