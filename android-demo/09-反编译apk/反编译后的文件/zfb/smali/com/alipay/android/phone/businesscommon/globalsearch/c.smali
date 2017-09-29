.class final Lcom/alipay/android/phone/businesscommon/globalsearch/c;
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
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->b:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v1, "group"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->searchGroup(Ljava/lang/String;Ljava/lang/String;II)V

    .line 107
    return-void
.end method
