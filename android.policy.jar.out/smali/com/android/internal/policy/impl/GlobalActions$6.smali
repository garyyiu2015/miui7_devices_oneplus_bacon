.class Lcom/android/internal/policy/impl/GlobalActions$6;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->takeScreenrecord()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 414
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mScreenrecordOption:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400(Lcom/android/internal/policy/impl/GlobalActions;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->checkOptionAndKeyguard(I)Z

    move-result v0

    .line 418
    .local v0, "toggle":Z
    return v0
.end method
