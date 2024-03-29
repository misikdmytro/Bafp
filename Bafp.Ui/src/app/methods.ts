export function debounce<F extends (...params: any[]) => void>(fn: F, delay: number) {
    let timeoutID: number = null;
    return function (this: any, ...args: any[]): void {
        clearTimeout(timeoutID);
        timeoutID = window.setTimeout(() => fn.apply(this, args), delay);
    } as F;
}