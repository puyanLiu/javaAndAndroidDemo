.class final Lcom/alipay/mobile/phonecashier/service/b;
.super Ljava/lang/Object;
.source "PhoneCashierServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/b;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/b;->c:Landroid/app/Activity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/b;->b:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/b;->c:Landroid/app/Activity;

    .line 178
    invoke-static {v0, v1}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    return-void
.end method
