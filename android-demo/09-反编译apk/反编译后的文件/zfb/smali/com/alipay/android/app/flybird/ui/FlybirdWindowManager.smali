.class public Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;
.implements Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field private f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field private g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

.field private k:I

.field private l:J

.field private m:Ljava/lang/Object;

.field private n:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

.field private o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Z

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:J

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    .line 99
    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    .line 1345
    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    .line 1347
    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Z

    .line 104
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    .line 105
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->b(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V

    .line 111
    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 334
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object p1
.end method

.method static synthetic a(IILjava/lang/Object;I)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput p3, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    iput p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 185
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->d()I

    move-result v1

    .line 187
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->c()Lcom/alipay/android/app/IAlipayCallback;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->b()Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/alipay/android/app/IRemoteCallback;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    if-eqz v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 199
    const-string/jumbo v2, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string/jumbo v2, "CallingPid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private static a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    move-result-object v2

    .line 642
    if-nez v2, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    array-length v3, v2

    move v1, v0

    .line 646
    :goto_1
    if-ge v1, v3, :cond_0

    .line 647
    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-eq v4, v5, :cond_2

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    if-ne v4, v5, :cond_3

    .line 648
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 703
    iget-object v0, p2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->a:[I

    iget-object v1, p2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1185
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 706
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k()V

    .line 709
    :cond_1
    if-eqz p3, :cond_2

    .line 710
    invoke-virtual {p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    if-eqz v0, :cond_0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    .line 719
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b()Z

    move-result v0

    .line 720
    if-eqz v0, :cond_0

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 731
    :pswitch_2
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:J

    .line 734
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 736
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 738
    const-string/jumbo v2, "param"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    :cond_3
    const-string/jumbo v2, "param"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "param"

    .line 740
    :goto_1
    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 742
    :cond_4
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 743
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 744
    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 745
    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 748
    :cond_5
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 755
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    :cond_7
    const-string/jumbo v2, "l2rmode"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 759
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v3, "l2rmode"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->b(I)V

    .line 762
    :cond_8
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g()Z

    move-result v2

    if-nez v2, :cond_a

    .line 763
    const-string/jumbo v2, "loadtxt"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 764
    const-string/jumbo v2, "loadtxt"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 766
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    .line 771
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    .line 773
    :cond_a
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 774
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->i()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    .line 777
    new-instance v2, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v2}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 778
    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 779
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iput-object v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 780
    const/16 v0, 0xb

    iput v0, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 781
    const/16 v0, 0x7d3

    iput v0, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 782
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 739
    :cond_b
    :try_start_2
    const-string/jumbo v2, "params"
    :try_end_2
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 751
    :catch_1
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto/16 :goto_2

    .line 769
    :cond_c
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    goto :goto_3

    .line 786
    :pswitch_3
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_0

    :try_start_3
    array-length v0, v1

    if-lez v0, :cond_0

    .line 791
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    .line 792
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x0

    .line 794
    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 795
    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 796
    const-string/jumbo v4, "nativeValidate"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 797
    const-string/jumbo v0, "nativeValidate"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    move v7, v0

    .line 800
    :goto_4
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string/jumbo v3, "fp"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 802
    const/4 v0, 0x2

    aget-object v0, v1, v0

    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 807
    invoke-virtual {p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 808
    const/4 v0, 0x0

    .line 809
    if-eqz v3, :cond_f

    const-string/jumbo v5, "fpProtocolType"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 810
    const-string/jumbo v0, "fpProtocolType"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    const/4 v0, 0x1

    :goto_5
    move v5, v0

    .line 816
    :goto_6
    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    :goto_7
    const/4 v0, 0x1

    aget-object v2, v1, v0

    array-length v0, v1

    const/4 v6, 0x3

    if-le v0, v6, :cond_12

    const/4 v0, 0x3

    aget-object v0, v1, v0

    move-object v6, v0

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6307\u7eb9\u652f\u4ed8 isNativeValidate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isSamsungFPPay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    if-eqz v5, :cond_13

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/i;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/j;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/j;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_d

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/k;

    invoke-direct {v1, p0, v5, v6}, Lcom/alipay/android/app/flybird/ui/k;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "fingerprint_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 839
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 810
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 812
    :cond_f
    :try_start_4
    const-string/jumbo v3, "fpProtocolType"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 813
    const-string/jumbo v0, "fpProtocolType"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    :goto_a
    move v5, v0

    goto/16 :goto_6

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 816
    :cond_11
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto/16 :goto_7

    :cond_12
    const/4 v0, 0x0

    move-object v6, v0

    goto/16 :goto_8

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 820
    :cond_14
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string/jumbo v3, "wear"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 822
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 823
    const-string/jumbo v0, "type"

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 824
    const-string/jumbo v0, "version"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 825
    const-string/jumbo v0, "data"

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v0

    .line 827
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 829
    const/16 v4, 0x7b

    if-ne v0, v4, :cond_15

    .line 830
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "alipay_msp_bl_bt_shutdown"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "(\'status=0005\',\'tip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    :cond_15
    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :goto_b
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v4, "flybird_bl_val_ok"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v4, :cond_16

    :try_start_5
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_16
    :goto_c
    :try_start_6
    new-instance v4, Lcom/alipay/android/app/flybird/ui/f;

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/android/app/flybird/ui/f;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;[Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_17

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/g;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/flybird/ui/g;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "bracelet_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    .line 844
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/Object;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 849
    :pswitch_5
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 850
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 852
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "fp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 855
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 856
    const-string/jumbo v2, "bizId"

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 857
    const-string/jumbo v2, "type"

    const/16 v3, 0x25a

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 858
    const-string/jumbo v2, "actionType"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v2, "data"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string/jumbo v2, "responseMsg"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string/jumbo v2, "token"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    array-length v2, v0

    const/4 v3, 0x5

    if-le v2, v3, :cond_19

    .line 863
    const-string/jumbo v2, "scanType"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v2, "tipsMsg"

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_19
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 870
    :cond_1a
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "wear"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 872
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v1

    .line 876
    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1b

    .line 877
    const-string/jumbo v2, "protocol"

    const-string/jumbo v3, "new"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string/jumbo v2, "action"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string/jumbo v2, "reqMsg"

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string/jumbo v2, "submitMsgName"

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    const-string/jumbo v1, "bizId"

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    :cond_1b
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->c()V

    .line 885
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 890
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 892
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    .line 894
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_1d

    .line 895
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 896
    const-string/jumbo v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1c

    .line 900
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 903
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] type.getParams():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 917
    :cond_1e
    :goto_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v2, :cond_20

    .line 920
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :cond_1f
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 908
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 909
    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 910
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    goto :goto_e

    .line 922
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    .line 930
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    .line 931
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 932
    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 934
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 935
    const/16 v2, 0x10

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 936
    const/16 v2, 0x7d5

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 937
    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 938
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 943
    :pswitch_8
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 945
    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;-><init>()V

    .line 948
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(Ljava/lang/String;)V

    .line 949
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b(Ljava/lang/String;)V

    .line 950
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 951
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c(I)V

    .line 953
    :try_start_7
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    :try_end_7
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 954
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 961
    :pswitch_9
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v2

    .line 962
    if-eqz v2, :cond_0

    .line 963
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    if-nez v0, :cond_21

    .line 964
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getLastRequestTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;J)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    .line 967
    :cond_21
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    goto/16 :goto_0

    .line 973
    :pswitch_a
    new-instance v0, Lcom/alipay/android/app/flybird/ui/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/d;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/d;->start()V

    goto/16 :goto_0

    .line 1019
    :pswitch_b
    new-instance v0, Lcom/alipay/android/app/flybird/ui/e;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/e;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/e;->start()V

    goto/16 :goto_0

    .line 1061
    :pswitch_c
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_0

    .line 1063
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "fp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1066
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1067
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 1068
    const-string/jumbo v1, "bizId"

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1069
    const-string/jumbo v1, "type"

    const/16 v2, 0x25b

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1071
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1075
    :cond_22
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 1076
    const-string/jumbo v2, "bizId"

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1077
    const-string/jumbo v2, "type"

    const/16 v3, 0x25c

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1080
    :try_start_8
    const-string/jumbo v2, "data"

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string/jumbo v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1083
    :goto_f
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1089
    :cond_23
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "wear"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 1091
    const-string/jumbo v2, "type"

    const/16 v3, 0x1f7

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1092
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1094
    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1114
    :cond_24
    :goto_10
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1095
    :cond_25
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1096
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 1097
    const-string/jumbo v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 1099
    :try_start_9
    const-string/jumbo v3, "data"

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1102
    :goto_11
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1104
    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_10

    .line 1105
    :cond_26
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v3}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1106
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1107
    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 1108
    :cond_27
    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1109
    const-string/jumbo v0, "result"

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 1111
    :cond_28
    const-string/jumbo v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 1119
    :pswitch_d
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a()[Ljava/lang/String;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    .line 1121
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1124
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1125
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1127
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/content/Intent;)V

    .line 1130
    :cond_29
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1131
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1132
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1140
    :pswitch_e
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 1141
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    .line 1142
    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 1143
    const/16 v1, 0x3ea

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 1144
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 1145
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 1149
    :pswitch_f
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1154
    :pswitch_10
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    goto/16 :goto_0

    .line 1158
    :pswitch_11
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 1159
    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 1160
    const/16 v1, 0x3ec

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 1161
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 1162
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    .line 1167
    :pswitch_12
    :try_start_a
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1170
    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1171
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1174
    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string/jumbo v2, "phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string/jumbo v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 1181
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 1184
    :pswitch_13
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->f()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_11

    :catch_6
    move-exception v0

    goto/16 :goto_f

    :catch_7
    move-exception v4

    goto/16 :goto_c

    :cond_2b
    move v5, v0

    goto/16 :goto_6

    :cond_2c
    move v7, v0

    goto/16 :goto_4

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 150
    const-class v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v1, v1, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 689
    if-eqz p1, :cond_0

    const-string/jumbo v0, "/forward/setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    const/4 v0, 0x1

    .line 698
    :goto_0
    return v0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 695
    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "filterLocalEvent"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 242
    :goto_0
    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 665
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    .line 666
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    .line 674
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v1, :cond_2

    .line 680
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Z

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Z

    return v0
.end method

.method static synthetic m(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    return v0
.end method

.method static synthetic n(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    return v0
.end method

.method static synthetic o(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:I

    return v0
.end method

.method static synthetic p(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 1

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 1553
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 1554
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1557
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->t:Landroid/content/BroadcastReceiver;

    .line 1558
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1561
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "biz:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EventData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 1569
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    .line 1570
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Ljava/lang/String;)V

    .line 1571
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    .line 1573
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;I)V
    .locals 5

    .prologue
    .line 1576
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 1577
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 1579
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 1580
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 1581
    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 1582
    const/16 v0, 0x7d3

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 1583
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    add-int/lit8 v2, p4, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;I)V

    .line 1584
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1585
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dispose  handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1620
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/m;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1627
    return-void
.end method

.method public dispose(IILjava/lang/Object;I)V
    .locals 7

    .prologue
    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dispose  handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1633
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/n;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/n;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1641
    return-void
.end method

.method public executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 3

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e()I

    move-result v0

    .line 123
    if-lez v0, :cond_1

    .line 124
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 125
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 126
    const/16 v2, 0xf

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 127
    new-instance v2, Lcom/alipay/android/app/flybird/ui/c;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/c;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    goto :goto_0
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c()V

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->m()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e()V

    .line 176
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 177
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 178
    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 179
    const/16 v1, 0x7d7

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 180
    iput-object p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 182
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/Utils;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    return-object v0
.end method

.method public getLastRequestTime()J
    .locals 2

    .prologue
    .line 1591
    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:J

    return-wide v0
.end method

.method public onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 147
    return-void
.end method

.method public onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v3

    .line 1196
    const-string/jumbo v0, ""

    .line 1197
    if-eqz v3, :cond_0

    .line 1198
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v0

    .line 1199
    if-nez v0, :cond_1

    .line 1200
    const-string/jumbo v0, "transition"

    .line 1210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    move-result-object v4

    .line 1211
    if-eqz v4, :cond_4

    .line 1212
    array-length v5, v4

    move v1, v2

    .line 1213
    :goto_1
    if-ge v1, v5, :cond_4

    .line 1214
    aget-object v6, v4, v1

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1202
    const-string/jumbo v0, "toast"

    goto :goto_0

    .line 1203
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1204
    const-string/jumbo v0, "dialog"

    goto :goto_0

    .line 1206
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1218
    :cond_4
    return v2
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 251
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string/jumbo v0, " MiniWindowManager onException"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b()V

    .line 259
    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_5

    .line 260
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    .line 261
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "6004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    const-string/jumbo v0, "mini_net_error"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_3
    :goto_1
    check-cast p1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {p1}, Lcom/alipay/android/app/exception/NetErrorException;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/alipay/android/app/flybird/ui/p;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/flybird/ui/p;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 268
    :cond_4
    const-string/jumbo v0, "mini_net_error_weak"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const-string/jumbo v2, "6002"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_5
    new-instance v0, Lcom/alipay/android/app/flybird/ui/o;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/o;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v9, 0x1

    .line 344
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->d()V

    .line 346
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e()V

    .line 347
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v2

    .line 348
    if-nez v2, :cond_3

    .line 349
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/q;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    :cond_0
    :goto_2
    return-void

    .line 353
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 359
    const-string/jumbo v2, "ex"

    const-string/jumbo v3, "createMainContainer"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 375
    :cond_2
    invoke-virtual {p0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_2

    .line 380
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/alipay/android/app/base/trade/Trade;->k()Z

    move-result v0

    if-nez v0, :cond_6

    .line 382
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    monitor-enter v4

    .line 383
    :try_start_5
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    if-nez v0, :cond_4

    .line 385
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 392
    :cond_4
    :goto_3
    :try_start_7
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    .line 395
    :cond_5
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 398
    :cond_6
    if-ne v2, v11, :cond_a

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 400
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 401
    const-string/jumbo v0, "act"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 402
    const/16 v0, 0x7d0

    .line 403
    const-string/jumbo v5, "time"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 404
    const-string/jumbo v0, "time"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    .line 407
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    .line 408
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V

    .line 409
    const-string/jumbo v1, "TOAST"

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v1, "msg"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    const-string/jumbo v2, "img"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/r;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/alipay/android/app/flybird/ui/r;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/s;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/s;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    int-to-long v7, v0

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_18

    .line 437
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 438
    invoke-virtual {v1, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 439
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    .line 440
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(I)V

    .line 441
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 442
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v2, :cond_18

    .line 443
    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    move-result v1

    .line 447
    :goto_4
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_8

    .line 449
    new-instance v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 450
    invoke-virtual {v3, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 451
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    .line 452
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 453
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v2, :cond_8

    .line 454
    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    move-result v1

    .line 457
    :cond_8
    if-eqz v1, :cond_0

    .line 459
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_9

    .line 460
    add-int/lit16 v6, v0, -0x1f4

    .line 463
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/t;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 386
    :catch_1
    move-exception v0

    .line 387
    :try_start_8
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 388
    const-string/jumbo v7, "ex"

    const-string/jumbo v8, "createMainContainer"

    invoke-static {v7, v8, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 395
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 473
    :cond_a
    const/4 v0, 0x3

    if-ne v2, v0, :cond_f

    .line 474
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 475
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "btns"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v7

    .line 477
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 478
    invoke-virtual {v7, v6}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 479
    const-string/jumbo v3, "txt"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    const-string/jumbo v4, "act"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 481
    new-instance v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 482
    invoke-virtual {v4, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 483
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    .line 484
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    .line 485
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V

    .line 486
    const-string/jumbo v0, "FRAME_DIALOG"

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v11, :cond_c

    .line 488
    invoke-virtual {v7, v1}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 489
    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    const-string/jumbo v1, "act"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 491
    new-instance v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 492
    invoke-virtual {v6, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 494
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 519
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 522
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 523
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    .line 525
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_2

    .line 495
    :cond_c
    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-le v0, v11, :cond_e

    .line 496
    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    .line 497
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>()V

    .line 499
    iput-object v3, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    .line 500
    iput-object v4, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    .line 501
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 502
    :goto_6
    if-ge v0, v5, :cond_d

    .line 503
    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>()V

    .line 504
    invoke-virtual {v7, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 505
    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    .line 506
    const-string/jumbo v4, "act"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 507
    new-instance v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 508
    invoke-virtual {v4, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 509
    iput-object v4, v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    .line 510
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 512
    :cond_d
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2, v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 514
    :cond_e
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const-string/jumbo v1, ""

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_5

    .line 528
    :cond_f
    const/16 v0, 0xb

    if-ne v2, v0, :cond_10

    .line 529
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0, v5, v6, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto/16 :goto_2

    .line 533
    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_12

    .line 534
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 535
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    .line 537
    :cond_11
    iput-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 538
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b()V

    .line 541
    :cond_12
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 542
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    .line 543
    invoke-static {v9, v10}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    .line 544
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/u;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/u;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 564
    :cond_13
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 565
    new-instance v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    .line 566
    if-eqz v4, :cond_14

    .line 567
    invoke-virtual {v5, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    .line 568
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    .line 569
    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->j()Z

    move-result v0

    if-nez v0, :cond_14

    .line 570
    invoke-virtual {p0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    .line 573
    :cond_14
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 574
    if-nez v1, :cond_16

    const-string/jumbo v0, ""

    .line 575
    :goto_7
    if-eqz v1, :cond_15

    .line 576
    const-string/jumbo v2, "fingerPay"

    invoke-virtual {v1, v2, v6}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 577
    if-eqz v1, :cond_15

    .line 578
    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/trade/Trade;->a(Z)V

    .line 581
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 582
    :try_start_9
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v8}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v6, v7, v8, v0, v9}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v0

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    .line 596
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    .line 597
    if-eqz v0, :cond_17

    .line 598
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/v;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/v;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Lcom/alipay/android/app/base/trade/Trade;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 574
    :cond_16
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 587
    :catch_2
    move-exception v0

    .line 588
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "flybird_system_error"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 589
    const-string/jumbo v2, "de"

    const-string/jumbo v3, "0060012"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "template_error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 590
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    const/16 v3, 0x23

    invoke-static {v1, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_2

    .line 630
    :cond_17
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_system_error"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:I

    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    const/16 v3, 0x23

    invoke-static {v0, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_18
    move v1, v6

    goto/16 :goto_4
.end method

.method public onLocalViewWindowLoaded(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 226
    check-cast p1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 227
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    .line 228
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onReadSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    const-string/jumbo v1, "\'data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    .line 1658
    invoke-static {p1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 1659
    return-void
.end method

.method public onWindowLoaded(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 214
    check-cast p1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    .line 216
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
