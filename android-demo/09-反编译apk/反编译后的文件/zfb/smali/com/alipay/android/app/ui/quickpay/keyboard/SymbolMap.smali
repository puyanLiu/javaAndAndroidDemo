.class public Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    .line 16
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2329

    const-string/jumbo v2, "~"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232a

    const-string/jumbo v2, "!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232b

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232c

    const-string/jumbo v2, "$"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232d

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232e

    const-string/jumbo v2, "^"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x232f

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2330

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2331

    const-string/jumbo v2, "("

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2332

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2333

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2334

    const-string/jumbo v2, "{"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2335

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2336

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2337

    const-string/jumbo v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2338

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2339

    const-string/jumbo v2, "<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233a

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233b

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233c

    const-string/jumbo v2, ","

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233d

    const-string/jumbo v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233e

    const-string/jumbo v2, "`"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x233f

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2340

    const-string/jumbo v2, "="

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2341

    const-string/jumbo v2, "["

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2342

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2343

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2344

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2345

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2346

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2347

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2348

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2349

    const-string/jumbo v2, "\u00a5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    const/16 v1, 0x234a

    const-string/jumbo v2, "\u00f7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    return-void
.end method
