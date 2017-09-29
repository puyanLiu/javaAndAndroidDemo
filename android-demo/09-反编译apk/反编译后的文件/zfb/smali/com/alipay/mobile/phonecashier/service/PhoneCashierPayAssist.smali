.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;
.super Ljava/lang/Object;
.source "PhoneCashierPayAssist.java"


# static fields
.field private static a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->b:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public static a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    invoke-direct {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;-><init>()V

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    .line 17
    :cond_0
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
