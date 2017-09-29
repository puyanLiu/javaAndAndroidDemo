.class public Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "StrangerSessionPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "stranger_session_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "stranger_list"
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/alipay/mobile/socialwidget/ui/v;

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "strangerrecentrefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/v;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/socialwidget/ui/v;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/v;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c()V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 71
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 70
    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 75
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialwidget/ui/w;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;B)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/recent_session"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/ali_account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/chatgroup_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/stranger_visual"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 84
    return-void
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    if-nez v0, :cond_0

    .line 220
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentStrangerCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 241
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/u;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/u;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/v;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/v;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialwidget/ui/v;->sendMessage(Landroid/os/Message;)Z

    .line 246
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/v;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/v;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialwidget/ui/v;->a()V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-eqz v1, :cond_2

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Landroid/database/Cursor;)V

    .line 116
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 131
    const-string/jumbo v1, "itemType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 132
    const-string/jumbo v2, "itemId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 139
    const-string/jumbo v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string/jumbo v3, "itemType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 141
    const-string/jumbo v4, "itemId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string/jumbo v5, "displayName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMarkRead(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    const-string/jumbo v7, "unread"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 147
    if-nez v7, :cond_2

    .line 148
    new-instance v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v7}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 149
    const/4 v8, 0x2

    iput v8, v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 150
    sget v8, Lcom/alipay/mobile/socialwidget/R$string;->g:I

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 151
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMakeTop(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    const-string/jumbo v7, "top"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 161
    :goto_1
    if-eqz v0, :cond_4

    .line 162
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 163
    const/4 v7, 0x4

    iput v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 164
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->h:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 165
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    :goto_2
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 174
    const/4 v7, 0x5

    iput v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 175
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->d:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 176
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    .line 178
    new-instance v7, Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/s;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    .line 215
    return v1

    .line 153
    :cond_2
    new-instance v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v7}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 154
    iput v1, v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 155
    sget v8, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 156
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    :cond_4
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 168
    const/4 v7, 0x3

    iput v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 169
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->f:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 170
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 89
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/r;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
