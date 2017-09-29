.class final Lcom/alipay/mobile/socialwidget/ui/q;
.super Ljava/lang/Object;
.source "SocialRecentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/p;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/p;ILjava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->b:I

    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/socialwidget/ui/q;->f:Landroid/database/Cursor;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 174
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 175
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->b:I

    packed-switch v1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 177
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionUnread(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkunread"

    .line 179
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionRead(Ljava/lang/String;)I

    .line 185
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkread"

    .line 186
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v7}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0, v1, v7}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    .line 198
    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v4, "top"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->operateRecentSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkuntop"

    .line 199
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :pswitch_4
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0, v1, v7}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    .line 211
    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v4, "top"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v6, v7

    .line 210
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->operateRecentSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarktop"

    .line 212
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :pswitch_5
    const/4 v1, -0x1

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    if-ne v1, v2, :cond_4

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->f:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->f:Landroid/database/Cursor;

    const-string/jumbo v3, "lastSenderId"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    array-length v5, v3

    move v2, v7

    :goto_1
    if-lt v2, v5, :cond_3

    .line 228
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSessions(Ljava/util/List;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    aget-object v6, v3, v2

    .line 223
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 222
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 226
    const-string/jumbo v1, "1"

    .line 225
    invoke-static {v1, v6}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    packed-switch v0, :pswitch_data_1

    .line 249
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentdelete"

    .line 249
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_7
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 235
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, v7}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 242
    :pswitch_8
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 241
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->deleteAllMsgs()V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/p;->a(Lcom/alipay/mobile/socialwidget/ui/p;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v7}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
