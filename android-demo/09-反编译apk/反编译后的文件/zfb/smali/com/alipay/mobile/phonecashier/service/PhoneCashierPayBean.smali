.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;
.super Ljava/lang/Object;
.source "PhoneCashierPayBean.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    .line 18
    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->c:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    return-object v0
.end method

.method public final b()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    .line 32
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    return v0
.end method
