.class final Lcom/samsung/android/sdk/pass/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->hasPendingCommand()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/d;->a:Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$b;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V

    goto :goto_0
.end method
