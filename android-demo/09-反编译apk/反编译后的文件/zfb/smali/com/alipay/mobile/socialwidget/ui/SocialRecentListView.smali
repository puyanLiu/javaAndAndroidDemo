.class public Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;
.super Lcom/alipay/mobile/commonui/widget/APListView;
.source "SocialRecentListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/commonui/widget/APListView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

.field private c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private a(IZ)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 302
    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-lt v4, v5, :cond_0

    .line 321
    :goto_1
    return v3

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 304
    if-eqz v0, :cond_3

    .line 305
    const-string/jumbo v1, "unread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 308
    const-string/jumbo v1, "notDisturb"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 309
    :goto_2
    const-string/jumbo v7, "redPointStyle"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz p2, :cond_2

    .line 311
    if-lez v6, :cond_3

    move v3, v4

    .line 312
    goto :goto_1

    :cond_1
    move v1, v3

    .line 308
    goto :goto_2

    .line 315
    :cond_2
    if-nez v1, :cond_3

    if-lez v6, :cond_3

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v4

    .line 317
    goto :goto_1

    .line 302
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 325
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.socialsdk."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "itemType"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v2, "itemId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendRecentExternalChangeBroadcast:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getFirstVisiblePosition()I

    move-result v1

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getLastVisiblePosition()I

    move-result v2

    .line 283
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    .line 284
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_5

    .line 285
    if-eqz p2, :cond_4

    iget v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->leftUnread:I

    if-gtz v1, :cond_2

    .line 286
    if-eqz v0, :cond_4

    iget v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightUnread:I

    if-lez v1, :cond_4

    .line 287
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0

    .line 283
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 290
    :cond_4
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(IZ)I

    move-result v0

    .line 291
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 293
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(IZ)I

    move-result v0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 76
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 79
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 80
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setScrollingCacheEnabled(Z)V

    .line 82
    return-void
.end method

.method public final a(Landroid/database/Cursor;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Ljava/util/HashMap;)V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->notifyDataSetChanged()V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Ljava/util/HashMap;)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 87
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 91
    const-string/jumbo v2, "itemType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 92
    const-string/jumbo v3, "itemId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    packed-switch v2, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string/jumbo v2, "uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 118
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 96
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/o;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :pswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "actionTypeRecommendationPage"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000253"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
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
    const/4 v6, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 127
    if-nez v5, :cond_0

    .line 259
    :goto_0
    return v6

    .line 130
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string/jumbo v0, "itemType"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 132
    const-string/jumbo v0, "itemId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string/jumbo v0, "displayName"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMarkRead(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "unread"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 139
    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->g:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 141
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMakeTop(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string/jumbo v0, "top"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v6

    .line 151
    :goto_2
    if-eqz v0, :cond_5

    .line 152
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 153
    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->h:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 155
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    :goto_3
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 164
    const/4 v1, 0x5

    iput v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->d:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 166
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v9, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    invoke-direct {v9, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    .line 168
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/p;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialwidget/ui/p;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v9, v7, v8, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    goto/16 :goto_0

    .line 143
    :cond_3
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 144
    iput v6, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 146
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 157
    :cond_5
    new-instance v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 158
    const/4 v1, 0x3

    iput v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->f:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 160
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
