.class public Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;
.super Ljava/lang/Object;
.source "FlybirdTemplateKeyboardService.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplateKeyboardService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/EditText;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 85
    if-nez v0, :cond_0

    move v0, v1

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 90
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 92
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public destroyKeyboard(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::enter"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::decorView is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/alikeyboard/KeyboardManager;->b(I)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    move-result-object v0

    .line 174
    if-nez v0, :cond_1

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::keyboard is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/alikeyboard/KeyboardManager;->a(I)V

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::unBindKeyboard"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideKeyboard(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    const-string/jumbo v3, "FlybirdTemplateKeyboardService-hideKeyboard:::enter"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez p1, :cond_1

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    const-string/jumbo v3, "FlybirdTemplateKeyboardService-hideKeyboard:::decorView is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/app/alikeyboard/KeyboardManager;->b(I)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->isShowKeyboard()Z

    move-result v0

    .line 154
    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "keyboard-lj"

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FlybirdTemplateKeyboardService-hideKeyboard:::isShowKeyboard:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    .line 122
    const-string/jumbo v3, "FlybirdTemplateKeyboardService-showKeyboard-enter"

    .line 121
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p3, p1}, Lcom/alipay/android/app/alikeyboard/FlybirdTemplateKeyboardService;->a(Landroid/view/View;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return v8

    :cond_0
    move-object v0, p4

    .line 127
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-lt v3, v4, :cond_3

    move-object v0, v2

    .line 128
    :goto_2
    if-nez v0, :cond_2

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "keyboard-lj"

    .line 130
    const-string/jumbo v3, "FlybirdTemplateKeyboardService-showKeyboard-addKeyboard"

    .line 129
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;-><init>(Landroid/content/Context;)V

    instance-of v0, p3, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Landroid/widget/FrameLayout;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->initializeKeyboard(Landroid/widget/FrameLayout;)V

    instance-of v0, p4, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    check-cast p4, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_4
    move-object v0, v1

    .line 133
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/alikeyboard/KeyboardManager;->a(ILcom/alipay/android/app/alikeyboard/AlipayKeyboard;)V

    .line 134
    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    if-ne p2, v1, :cond_7

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    :goto_5
    int-to-long v2, p6

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    if-eqz v5, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 131
    goto :goto_3

    :cond_6
    instance-of v0, p4, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    check-cast p4, Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 134
    :cond_7
    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    if-ne p2, v1, :cond_8

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    goto :goto_5
.end method
