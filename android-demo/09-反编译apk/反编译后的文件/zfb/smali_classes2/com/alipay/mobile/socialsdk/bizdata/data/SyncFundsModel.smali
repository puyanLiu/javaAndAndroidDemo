.class public Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;
.super Ljava/lang/Object;
.source "SyncFundsModel.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public colse:Z

.field public linkText:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->text:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->url:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->linkText:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->bizType:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->sessionId:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncFundsModel;->colse:Z

    .line 6
    return-void
.end method
