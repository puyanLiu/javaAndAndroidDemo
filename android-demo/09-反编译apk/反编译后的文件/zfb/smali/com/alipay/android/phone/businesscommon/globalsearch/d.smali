.class final Lcom/alipay/android/phone/businesscommon/globalsearch/d;
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
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->b:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;

    const-string/jumbo v1, "chatmsg"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->searchChatMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
