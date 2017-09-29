.class final Lcom/alipay/android/phone/businesscommon/globalsearch/b;
.super Ljava/lang/Object;
.source "GlobalSearchServiceImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/b;->b:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v1, "contact"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->searchContact(Ljava/lang/String;Ljava/lang/String;II)V

    .line 101
    return-void
.end method
