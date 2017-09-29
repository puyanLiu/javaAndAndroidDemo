.class final Lcom/alipay/euler/andfix/b;
.super Ljava/lang/ClassLoader;
.source "AndFixManager.java"


# instance fields
.field final synthetic a:Ldalvik/system/DexFile;

.field final synthetic b:Lcom/alipay/euler/andfix/a;


# direct methods
.method constructor <init>(Lcom/alipay/euler/andfix/a;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/euler/andfix/b;->b:Lcom/alipay/euler/andfix/a;

    iput-object p3, p0, Lcom/alipay/euler/andfix/b;->a:Ldalvik/system/DexFile;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/euler/andfix/b;->a:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    if-nez v0, :cond_1

    const-string/jumbo v1, "com.alipay.euler.andfix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    :cond_0
    return-object v0

    .line 164
    :cond_1
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
