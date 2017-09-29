.class final Lcom/alipay/mobile/socialsdk/chat/processer/e;
.super Ljava/lang/Object;
.source "ChatMessageProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->c:Ljava/util/HashMap;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;

    .line 116
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMessageProcesser;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadStrangerProfile(Ljava/util/List;)Ljava/util/HashMap;

    .line 124
    :cond_1
    return-void

    .line 117
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/e;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v5

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
