.class final Lcom/alipay/mobile/socialsdk/chat/data/b;
.super Ljava/lang/Object;
.source "SocialSdkChatServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/b;->a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/data/b;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/b;->b:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->loadAllResource()V

    .line 127
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;

    .line 128
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UploadingMsgDaoOp;->clearUploadingState()V

    .line 131
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 130
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->deleteAllUnburnedMsg()V

    .line 133
    return-void
.end method
