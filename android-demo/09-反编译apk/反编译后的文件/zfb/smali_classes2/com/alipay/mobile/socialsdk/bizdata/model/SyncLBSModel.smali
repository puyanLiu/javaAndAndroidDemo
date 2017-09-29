.class public Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSModel;
.super Ljava/lang/Object;
.source "SyncLBSModel.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public command:Lcom/alipay/mobile/socialsdk/bizdata/model/SyncLBSCommand;

.field public gmtModify:Ljava/lang/String;

.field public linkUrl:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/ShareLBS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
