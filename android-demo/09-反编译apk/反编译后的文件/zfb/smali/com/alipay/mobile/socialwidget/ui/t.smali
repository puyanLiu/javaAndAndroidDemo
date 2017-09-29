.class final Lcom/alipay/mobile/socialwidget/ui/t;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/s;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/s;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/t;->b:I

    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/t;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialwidget/ui/t;->d:I

    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/t;->e:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->b:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionUnread(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionRead(Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 206
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 205
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/t;->a:Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/s;->a(Lcom/alipay/mobile/socialwidget/ui/s;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
