.class public Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/factory/H5PageFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PageFactoryImpl"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public createPage(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 45
    const-string/jumbo v1, "H5PageFactoryImpl"

    const-string/jumbo v2, "start create page"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 58
    :cond_0
    :goto_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 60
    const-string/jumbo v3, "transparent"

    invoke-static {p1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string/jumbo v0, "supportTrans"

    const-string/jumbo v3, "in pagefactory supporttrans"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 72
    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 74
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    .line 76
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v3, "init web container"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 127
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v3, "init web container end"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;

    invoke-direct {v0, p0, p1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 151
    new-instance v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;-><init>(Landroid/app/Activity;)V

    .line 152
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V

    .line 155
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :goto_2
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v2, "create Page!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 189
    :goto_3
    return-object v0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    const-string/jumbo v3, "H5PageFactoryImpl"

    const-string/jumbo v4, "startParams getExtras Exception"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string/jumbo v3, "H5PageFactoryImpl"

    const-string/jumbo v4, "init exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :catch_2
    move-exception v0

    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v2, "createPage excetion"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 163
    :cond_4
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 164
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    .line 165
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    :goto_4
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$6;

    invoke-direct {v0, p0, p1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 186
    new-instance v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;-><init>(Landroid/app/Activity;)V

    .line 187
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V

    .line 188
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v2, "create Page!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 189
    goto :goto_3

    .line 166
    :catch_3
    move-exception v0

    .line 167
    const-string/jumbo v3, "H5PageFactoryImpl"

    const-string/jumbo v4, "init exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public refreshView(Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 200
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 201
    :cond_0
    const-string/jumbo v0, "root contentView is null"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    if-nez p3, :cond_3

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 214
    :cond_3
    :goto_1
    const-string/jumbo v0, "transparent"

    invoke-static {p3, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    const-string/jumbo v0, "supportTrans"

    const-string/jumbo v2, "in pagefactory supporttrans"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_2
    if-nez v0, :cond_5

    .line 219
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    sget v3, Lcom/alipay/mobile/nebulacore/R$dimen;->h5_title_height:I

    .line 219
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 221
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5ToolBar()Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 231
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    sget v3, Lcom/alipay/mobile/nebulacore/R$dimen;->h5_bottom_height:I

    .line 231
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 233
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5ToolBar()Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->getContent()Landroid/view/View;

    move-result-object v2

    .line 237
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 236
    invoke-virtual {p2, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_5
    if-nez v0, :cond_8

    .line 242
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v0

    .line 245
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 250
    const/4 v3, 0x3

    .line 251
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    .line 250
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 254
    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5ToolBar()Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 255
    const/4 v3, 0x2

    .line 256
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5ToolBar()Lcom/alipay/mobile/nebulacore/view/H5ToolBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/view/H5ToolBar;->getContent()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    .line 255
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 259
    :cond_7
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string/jumbo v2, "H5PageFactoryImpl"

    const-string/jumbo v3, "startParams getExtras Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 262
    :cond_8
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->getContent()Landroid/view/View;

    move-result-object v0

    .line 265
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method
