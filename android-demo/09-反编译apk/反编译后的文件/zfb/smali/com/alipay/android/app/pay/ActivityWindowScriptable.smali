.class Lcom/alipay/android/app/pay/ActivityWindowScriptable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/IWindowScriptable;
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

.field private c:Lcom/alipay/android/app/display/windows/IContainer;

.field private d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private e:Landroid/app/Dialog;

.field private f:Landroid/widget/Toast;

.field public mLoading:Lcom/alipay/android/app/script/ILoadingScriptable;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/display/windows/IContainer;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->mLoading:Lcom/alipay/android/app/script/ILoadingScriptable;

    .line 58
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->f:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Lcom/alipay/android/app/display/windows/IContainer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Lcom/alipay/android/app/display/event/OnContainerEventListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->f:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    .line 313
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    const/16 v1, 0xd

    if-gt v0, v1, :cond_6

    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 93
    new-instance v1, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->b()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UINavigator;

    .line 97
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UINavigator;->d()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-interface {v0, v3, v2}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a(Landroid/view/View;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    .line 108
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->c()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;

    .line 109
    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->h()[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    move-result-object v0

    .line 113
    array-length v3, v0

    if-lez v3, :cond_4

    .line 114
    aget-object v3, v0, v6

    .line 115
    iget-object v4, v3, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->d:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/pay/ActivityWindowScriptable$1;

    invoke-direct {v5, p0, v3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$1;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;)V

    invoke-virtual {v1, v4, v5}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    .line 144
    :cond_4
    array-length v3, v0

    if-lt v3, v8, :cond_5

    .line 145
    aget-object v0, v0, v7

    .line 146
    iget-object v3, v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->d:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/pay/ActivityWindowScriptable$2;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$2;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;)V

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    .line 175
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 189
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->b()Lcom/alipay/android/app/widget/CustomAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 200
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->b()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UINavigator;

    .line 203
    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UINavigator;->d()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    :cond_7
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 216
    const-string/jumbo v3, ""

    .line 219
    const-string/jumbo v4, ""

    .line 222
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->c()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;

    .line 223
    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->h()[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    move-result-object v5

    .line 227
    array-length v0, v5

    if-lez v0, :cond_9

    .line 228
    aget-object v6, v5, v6

    .line 229
    iget-object v3, v6, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->d:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;

    invoke-direct {v0, p0, v6}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;)V

    .line 256
    :goto_1
    array-length v6, v5

    if-lt v6, v8, :cond_8

    .line 257
    aget-object v5, v5, v7

    .line 258
    iget-object v4, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->d:Ljava/lang/String;

    .line 259
    new-instance v2, Lcom/alipay/android/app/pay/ActivityWindowScriptable$5;

    invoke-direct {v2, p0, v5}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$5;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;)V

    move-object v5, v2

    move-object v2, v3

    move-object v3, v0

    .line 287
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v6, Lcom/alipay/android/app/pay/ActivityWindowScriptable$6;

    invoke-direct {v6, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$6;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 301
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    move-object v5, v2

    move-object v2, v3

    move-object v3, v0

    goto :goto_2

    :cond_9
    move-object v0, v2

    goto :goto_1

    :cond_a
    move-object v5, v2

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_2
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Back:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 65
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const-string/jumbo v2, "msp_btn_ok"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/pay/ActivityWindowScriptable$7;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$7;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    move-object v1, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public allowback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 661
    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 675
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Loaded:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 73
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 75
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    .line 578
    iput-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 583
    iput-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;

    .line 585
    :cond_1
    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 465
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/android/app/pay/ActivityWindowScriptable$8;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$8;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;

    invoke-direct {v5, p0, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    move-object v1, p4

    move-object v2, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->WinDismiss:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 546
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 548
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 318
    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    .line 319
    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    .line 320
    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    .line 321
    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->f:Landroid/widget/Toast;

    .line 322
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Exit:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 554
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 556
    :cond_0
    return-void
.end method

.method public getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->mLoading:Lcom/alipay/android/app/script/ILoadingScriptable;

    return-object v0
.end method

.method public loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    .line 340
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const-string/jumbo v1, "msp_loading_default"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->setCancelable(Z)V

    .line 346
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    .line 347
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V

    .line 348
    if-lez p1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/android/app/pay/ActivityWindowScriptable$12;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$12;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->mLoading:Lcom/alipay/android/app/script/ILoadingScriptable;

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public varargs open([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 679
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 682
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public varargs openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 694
    if-nez p2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    array-length v0, p2

    .line 698
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 702
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 522
    :cond_0
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
