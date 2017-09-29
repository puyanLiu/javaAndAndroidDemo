.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;
.super Ljava/lang/Object;
.source "ChatApiMgr.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isRegistered:Z

.field private static volatile isStop:Z

.field private static final mApiGetObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mChatApiListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    .line 45
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    .line 47
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBaseFollowAccountInfo(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 4

    .prologue
    .line 327
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    .line 329
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receive message but not exist base  follow item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", record it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->recordNoFollowInfoPublicId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkBaseFollowAccountInfo: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized clearAllRegisters()V
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    .line 58
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 59
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    .locals 4

    .prologue
    .line 377
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchAddOrUpdate:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 379
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :goto_1
    monitor-exit v1

    return-void

    .line 380
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 381
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchAddOrUpdate:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 384
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 385
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 386
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 388
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onAddorUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchAddOrUpdate"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 402
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchClearMsg:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 404
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_1
    monitor-exit v1

    return-void

    .line 405
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 406
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchClearMsg:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 409
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 410
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 411
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 413
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchClearMsg"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 452
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDelete:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 454
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_1
    monitor-exit v1

    return-void

    .line 455
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 456
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDelete:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 459
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 460
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 461
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 463
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onDelete(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDelete"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 476
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDeleteShowItem:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 478
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :goto_1
    monitor-exit v1

    return-void

    .line 479
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDeleteShowItem:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 484
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 485
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 487
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDeleteShowItem"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchFeedsReaded(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 427
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchAddOrUpdate:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 429
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 446
    :goto_1
    monitor-exit v1

    return-void

    .line 430
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 431
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchAddOrUpdate:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 435
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 436
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 438
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onFeedsReaded(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchAddOrUpdate"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static dispatchMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 227
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 228
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    iget-boolean v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    if-nez v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    const-string/jumbo v2, "recall"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    const-string/jumbo v5, "y"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModelFromNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    :cond_2
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "has  More is false notify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_2
    return-void

    .line 229
    :cond_3
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_4

    .line 230
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsg:[ isStop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 235
    if-eqz v0, :cond_5

    .line 236
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsg:[ msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 243
    iget-object v5, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v2, v4}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v2, p0}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onReceiveMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    sget-object v4, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dispathMsg: onReceiveMessage[ msg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ] listener=["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v4, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 262
    goto/16 :goto_1

    .line 267
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->setHasNoNotifyFlag(Z)V

    .line 268
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "has  More msg recode"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static declared-synchronized dispatchOnReload(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDelete:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 505
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :goto_1
    monitor-exit v1

    return-void

    .line 506
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 507
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDelete:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 510
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 511
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 512
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 514
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onReload(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDelete"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispathMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 7

    .prologue
    .line 141
    const-class v6, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsg:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-nez p1, :cond_0

    .line 223
    :goto_0
    monitor-exit v6

    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->checkBaseFollowAccountInfo(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v5

    .line 148
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 149
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    const-string/jumbo v2, "recall"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 152
    const-string/jumbo v2, "recallMsgId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->recallMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v0

    .line 154
    if-nez v0, :cond_1

    .line 155
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    :try_start_3
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "OnDispatch: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    if-eqz v5, :cond_2

    iget-boolean v0, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 165
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 164
    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 166
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 171
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    const-string/jumbo v2, "y"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->processPPChatMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 176
    :cond_4
    iget-boolean v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    if-nez v0, :cond_5

    .line 177
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->loadNoFollowInfoList(Ljava/lang/String;)V

    .line 221
    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized dispathMsgStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 343
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispathMsgStatus:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ localMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 344
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :goto_1
    monitor-exit v1

    return-void

    .line 348
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_2

    .line 349
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispathMsgStatus:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 353
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 354
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 355
    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsgStatus:[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 359
    iget-object v5, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onUpdateSendStatus(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    :try_start_4
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsg: onUpdateSendStatus[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 4

    .prologue
    .line 123
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit v1

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static recallMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 274
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recallMsg msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " recallMsgId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 278
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v2

    .line 279
    invoke-virtual {v2, p3, p4, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByBMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 278
    if-nez v2, :cond_0

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recallMsg desnot exist retun ,msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " recallMsgId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 286
    iget v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 285
    invoke-virtual {v1, p3, p4, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 313
    :goto_0
    return v0

    .line 295
    :cond_0
    if-eqz p5, :cond_1

    iget-object v2, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v3, "sina_news"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recallMsg is sina_news msg ,delete recall msg self  ,msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " recallMsgId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v2

    .line 298
    iget v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 297
    invoke-virtual {v2, p3, p4, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 300
    invoke-virtual {p0, p3, p5}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V

    .line 302
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v2

    iget-object v3, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    iget-object v4, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 308
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 307
    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 309
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 310
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 312
    invoke-virtual {p0, p3, p5}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V

    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public static declared-synchronized registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 4

    .prologue
    .line 70
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string/jumbo v3, " ][ listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerChatApi:[ appId / userId / listener is null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    monitor-exit v1

    return-object v0

    .line 78
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->isTaskEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    .line 80
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->repairMsgStatus()V

    .line 83
    :cond_2
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)V

    .line 84
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z
    .locals 4

    .prologue
    .line 93
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    const-string/jumbo v3, " ][ apiObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerChatApi:[ appId / userId / apiObj is null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v0, 0x0

    .line 114
    :goto_0
    monitor-exit v1

    return v0

    .line 101
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 105
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, p2, :cond_2

    .line 107
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
