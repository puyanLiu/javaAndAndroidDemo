.class public Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "NFCMainActivity.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static synthetic g:[I


# instance fields
.field private b:Lcom/alipay/nfc/model/CardInfo;

.field private c:Landroid/app/AlertDialog;

.field private d:Z

.field private e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

.field private f:Landroid/nfc/tech/IsoDep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "NFC/Main"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Landroid/nfc/tech/IsoDep;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Lcom/alipay/nfc/model/CardInfo;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->d:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 150
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g()V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    .line 153
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showCardData - \u5361\u7c7b\u578b\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->h()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_1
    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-virtual {p0, v1, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f()V

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    goto :goto_1

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "busCardDispatch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getClass_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BeijingMunicipal"

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getClass_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-virtual {p0, v1, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/app/LogAgent;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-virtual {p0, v1, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    goto :goto_2

    :cond_3
    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-virtual {p0, v1, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    goto :goto_2

    .line 171
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f()V

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->b()V

    goto :goto_1

    .line 175
    :pswitch_3
    const-string/jumbo v0, "\u672a\u8bfb\u53d6\u5230\u5361\u4fe1\u606f\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic e(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    const-string/jumbo v1, "\u8be5\u5361\u6682\u65f6\u65e0\u6cd5\u8bc6\u522b\uff0c\u662f\u5426\u613f\u610f\u4e0a\u62a5\u5361\u7c7b\u578b\u4fe1\u606f\uff0c\u4ee5\u652f\u6301\u6211\u4eec\u540e\u7eed\u4f18\u5316?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    const-string/jumbo v2, "\u786e\u5b9a"

    .line 205
    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$1;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    .line 204
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 212
    const-string/jumbo v2, "\u53d6\u6d88"

    .line 213
    new-instance v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 227
    :cond_0
    return-void
.end method

.method private static synthetic h()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/nfc/model/CardTypeEnum;->values()[Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->CreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->DebitCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->LeavedCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->QuasiCreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/nfc/model/CardTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addNewFragment:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 136
    :cond_0
    sget v2, Lcom/alipay/mobile/nfc/R$id;->E:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 139
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->f:Landroid/nfc/tech/IsoDep;

    .line 238
    :cond_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "savedInstanceState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 50
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->a()V

    .line 53
    const-class v0, Lcom/alipay/mobile/nfc/ui/frgment/StartupFragment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroy:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->cancel(Z)Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->dismissProgressDialog()V

    .line 104
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()V

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onNewIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->cancel(Z)Z

    :cond_0
    const-string/jumbo v0, "cardinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/nfc/model/CardInfo;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b:Lcom/alipay/nfc/model/CardInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;-><init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e:Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;

    new-array v1, v5, [Landroid/content/Intent;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$CardInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->e()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onPause"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
