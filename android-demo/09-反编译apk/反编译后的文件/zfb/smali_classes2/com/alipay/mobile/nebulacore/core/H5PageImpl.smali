.class public Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Page;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PageImpl"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private d:Landroid/os/Bundle;

.field private e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private f:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

.field private g:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

.field private h:Lcom/alipay/mobile/h5container/api/H5Context;

.field private i:Z

.field private j:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private l:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

.field private m:Z

.field private n:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field private o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field private p:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private q:J

.field private r:Landroid/view/GestureDetector;

.field private s:Landroid/view/View$OnTouchListener;

.field private t:Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:Z

    .line 183
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Landroid/view/View$OnTouchListener;

    .line 191
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->t:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 105
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    .line 108
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Z

    .line 109
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 110
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 111
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:J

    .line 113
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v2, "H5PageImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5 page host in activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    .line 134
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "bizType"

    .line 137
    const-string/jumbo v3, ""

    .line 136
    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const-string/jumbo v0, "publicId"

    const-string/jumbo v2, ""

    invoke-static {p2, v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    const-string/jumbo v0, "appId"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string/jumbo v3, "bizType"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v0, p1, p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 149
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v2, "h5_create_webview appId={} params={}"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "url"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    .line 151
    :cond_4
    :goto_1
    const-string/jumbo v1, "H5PageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "allow webview access from file URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->t:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 156
    new-instance v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 158
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 161
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 164
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "bizScenario"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    const-string/jumbo v0, "H5PageImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set session scenario "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V

    .line 170
    :cond_6
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 173
    :cond_7
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Landroid/view/GestureDetector;

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string/jumbo v2, "H5PageImpl"

    const-string/jumbo v3, "startParams getExtras Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "offlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "H5PageImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NOT ALLOWED to load file scheme "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 297
    if-nez p0, :cond_1

    .line 298
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "invalid magic parameter!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string/jumbo v0, "u"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "no url found in magic parameter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    const-string/jumbo v3, "__webview_options__"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 317
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "no magic options found"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_4
    const-string/jumbo v3, "H5PageImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "found magic options "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "failed to decode magic options"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string/jumbo v3, "H5PageImpl"

    const-string/jumbo v4, "UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 334
    :cond_5
    :try_start_1
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 335
    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    .line 336
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    .line 338
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string/jumbo v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {p0, v4}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v5, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "decode magic option [key] "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " [value] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v5, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 350
    :catch_1
    move-exception v0

    .line 351
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "failed to decode magic option."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)V
    .locals 0

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:J

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "h5_ApkWhiteList"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "(.*\\.)?(alicdn|taobaocdn|aliapp|cifoo|tbcache|ucweb|autonavi|sina\\.17xgame|immomo|kuaidadi|ttdtweb|qyer|tudou|j5\\.dfcfw|alipayobjects)\\.(com|cn)$"

    :cond_2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method


# virtual methods
.method public applyParams()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;)V

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "requestPreAuth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const-string/jumbo v1, "h5_font_size"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setTextSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_1
    :goto_1
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "H5pageImpl applyParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void

    .line 505
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    const/4 v1, 0x0

    .line 507
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 508
    const-string/jumbo v4, "url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 511
    const-string/jumbo v0, "h5PageLoadUrl"

    .line 512
    const-string/jumbo v1, "url"

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v1, "requestPreAuth"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "requestPreAuth"

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "Referer"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    const-string/jumbo v1, "Referer"

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "Referer"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "publicId"

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    const-string/jumbo v4, "publicId"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 520
    :cond_4
    const-string/jumbo v4, "showLoading"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 521
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-static {v4, v0, v7}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 522
    if-eqz v0, :cond_7

    .line 523
    const-string/jumbo v0, "showLoading"

    goto :goto_2

    .line 525
    :cond_5
    const-string/jumbo v4, "backBehavior"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 526
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string/jumbo v0, "h5PageBackBehavior"

    .line 528
    const-string/jumbo v4, "backBehavior"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 529
    :cond_6
    const-string/jumbo v4, "backgroundColor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 530
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v1

    .line 532
    or-int/2addr v1, v6

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v0, "h5PageBackground"

    goto :goto_2

    .line 543
    :catch_0
    move-exception v0

    const-string/jumbo v1, "failed to parse scenario font size."

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public exitPage()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;->shouldExit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v2, "page exit intercepted by host!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    return v1

    .line 424
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Z

    if-eqz v0, :cond_1

    .line 425
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v2, "page already exited!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v3, "exitPage"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Z

    .line 431
    const-string/jumbo v0, "h5PageClosed"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 438
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 440
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v0, :cond_3

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    move v2, v0

    .line 457
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 447
    goto :goto_1

    .line 448
    :catch_0
    move-exception v0

    .line 451
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v3, "exception detail"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    return-object v0
.end method

.method public getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5Context;

    return-object v0
.end method

.method public getLastTouch()J
    .locals 2

    .prologue
    .line 621
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:J

    return-wide v0
.end method

.method public getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    return-object v0
.end method

.method public getSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method public getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    return-object v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 580
    const-string/jumbo v1, "baseUrl"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string/jumbo v1, "mimeType"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo v1, "encoding"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v1, "historyUrl"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v1, "h5PageShouldLoadData"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 586
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 590
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 591
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string/jumbo v1, "h5PageLoadUrl"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 593
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "page loadurl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onRelease()V

    .line 358
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onRelease()V

    .line 360
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->onRelease()V

    .line 362
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .line 363
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Landroid/os/Bundle;

    .line 364
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Landroid/app/Activity;

    .line 365
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 368
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 369
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 370
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 371
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 372
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 373
    return-void
.end method

.method public setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 603
    return-void
.end method

.method public setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 569
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 599
    return-void
.end method
