.class public final Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;
.super Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;
.source "ShareEntryActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final f:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;-><init>()V

    .line 35
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->loadListData()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Landroid/database/Cursor;ZIZ)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->refreshList(Landroid/database/Cursor;ZIZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->showOutShareResult(Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->makeToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/util/ArrayList;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->sendForwardChatMsgObjs(Ljava/util/ArrayList;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getContactSearched(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/ab;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ab;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 155
    return-void
.end method

.method public final getContactSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/aa;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/aa;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 139
    return-void
.end method

.method public final loadListData()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/ae;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/ui/ae;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 203
    return-void
.end method

.method public final makeToast(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/y;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/y;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 107
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 40
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 41
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 43
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_share_enty:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->setContentView(I)V

    .line 44
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_content:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->recent_contacts:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a()V

    .line 75
    return-void
.end method

.method public final refreshList(Landroid/database/Cursor;ZIZ)V
    .locals 7

    .prologue
    .line 111
    const-string/jumbo v6, ""

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/chat/ui/z;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Landroid/database/Cursor;ZIZ)V

    const-wide/16 v1, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 123
    return-void
.end method

.method public final sendForwardChatMsgObjs(Ljava/util/ArrayList;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/ad;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/chat/ui/ad;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 187
    return-void
.end method

.method public final sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 159
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/chat/ui/ac;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 171
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 66
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->f:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method

.method public final showOutShareResult(Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/x;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/x;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 91
    return-void
.end method
