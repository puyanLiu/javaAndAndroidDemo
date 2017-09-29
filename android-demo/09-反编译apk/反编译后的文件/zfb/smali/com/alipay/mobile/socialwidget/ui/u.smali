.class final Lcom/alipay/mobile/socialwidget/ui/u;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    new-instance v1, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v3}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v4}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v1, v1, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->notifyDataSetChanged()V

    .line 239
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
