.class final Lcom/alipay/mobile/socialsdk/timeline/data/a;
.super Ljava/lang/Object;
.source "SocialSdkTimelineServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/a;->a:Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->clearUploadingTLState()V

    .line 97
    return-void
.end method
